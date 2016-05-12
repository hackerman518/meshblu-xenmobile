{EventEmitter}          = require 'events'
debug                   = require('debug')('meshblu-connector-meshblu-xenmobile:index')
_                       = require 'lodash'
schemas                 = require './legacySchemas.json'
channelJson             = require './channelJson'
request                 = require 'request'
OctobluRequestFormatter = require 'octoblu-request-formatter'
format                  = new OctobluRequestFormatter(channelJson)

class MeshbluXenmobile extends EventEmitter
  constructor: ->
    debug 'MeshbluXenmobile constructed'
    @options = {}

  close: (callback) =>
    debug 'on close'
    callback()

  onMessage: (message) =>
    debug 'onMessage', message.payload
    return unless message.payload.endpoint?
    requestParams = format.processMessage message.payload, @auth, @defaultUrlParams
    requestParams.headers.auth_token = @auth_token if @auth_token?
    debug 'formatted request', requestParams

    if @auth_token?
      debug 'Sending Request'
      request requestParams, (error, response, body) =>
        if error?
          errorResponse = {
            fromUuid: message.fromUuid
            fromNodeId: message.metadata.flow.fromNodeId
            error: error
          }
          return @sendError errorResponse
        body = JSON.parse(body) if @isJson body
        response = {
          fromUuid: message.fromUuid
          fromNodeId: message.metadata.flow.fromNodeId
          metadata: message.metadata
          data: body
        }
        @sendResponse response
        debug 'Body: ', body

  sendResponse: ({fromUuid, fromNodeId, metadata, data}) =>
   @emit 'message', {
     devices: [fromUuid]
     payload:
       from: fromNodeId
       metadata: metadata
       data: data
   }

  sendError: ({fromUuid, fromNodeId, error}) =>
    code = error.code ? 500
    @emit 'message', {
      devices: [fromUuid]
      payload:
        from: fromNodeId
        metadata:
          code: code
          status: http.STATUS_CODES[code]
          error:
            message: error.message ? 'Unknown Error'
    }

  onConfig: (config) =>
    debug 'on config', @device.uuid
    @options = config.options

    if _.has @options, 'host'
      @defaultUrlParams = {
        ':hostname': @options.host
        ':port': @options.port
      }
      @auth = {
        'username': @options.username
        'password': @options.password
      }
      return @login() unless config.xenmobile_auth_token?
      @auth_token = config.xenmobile_auth_token

  start: (@device) =>
    debug 'started', @device.uuid
    update = _.extend schemas, format.buildSchema()
    update.octoblu ?= {}
    update.octoblu.flow ?= {}
    update.octoblu.flow.forwardMetadata = true

    @emit 'update', update

  login: () =>
    { host, port } = @options
    url = host + ':' + port + '/xenmobile/api/v1/authentication/login'
    debug 'url', url
    request.post {
      url: url
      json:
        login: @auth.username
        password: @auth.password
    }, (error, response, body) =>
      debug(error) if error?
      return error if error?
      @auth_token = body.auth_token
      @updateAuth body.auth_token

  updateAuth: (newAuth) =>
    @emit 'update', xenmobile_auth_token: newAuth

  isJson: (str) ->
    try
      JSON.parse str
    catch e
      return false
    true

module.exports = MeshbluXenmobile
