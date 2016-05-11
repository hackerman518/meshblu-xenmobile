{EventEmitter}          = require 'events'
debug                   = require('debug')('meshblu-connector-meshblu-xenmobile:index')
_                       = require 'lodash'
# schemas                 = require './legacySchema'
schemas                 = require './testSchema.json'
channelJson             = require './channelJson'
request                 = require 'request'
OctobluRequestFormatter = require 'octoblu-request-formatter'
format                  = new OctobluRequestFormatter(channelJson)

class MeshbluXenmobile extends EventEmitter
  constructor: ->
    debug 'MeshbluXenmobile constructed'

  close: (callback) =>
    debug 'on close'
    callback()

  onMessage: (message) =>
    debug 'onMessage', message.payload
    return if !message.payload.endpoint?
    requestParams = format.processMessage message.payload, @auth, @defaultUrlParams
    requestParams.headers.auth_token = @auth_token if @auth_token?
    debug 'formatted request', requestParams

    if @auth_token?
      debug 'Sending Request'
      request requestParams, (error, response, body) =>
        return @sendError error if error?
        body = JSON.parse(body)
        @emit 'message', devices: ["*"], payload: body
        debug 'Body: ', body

  sendError: (ErrorMessage) =>
    @emit 'message', devices: ["*"], topic: 'error', payload: ErrorMessage

  onConfig: (config) =>
    debug 'on config', @device.uuid
    @options = config.options

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
    @emit 'update', schemas

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

module.exports = MeshbluXenmobile
