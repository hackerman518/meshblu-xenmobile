{EventEmitter}   = require 'events'
debug            = require('debug')('meshblu-connector-meshblu-xenmobile:index')
_                = require 'lodash'
schemas          = require './legacySchema'
collection       = require './collection'
request          = require 'request'
RequestFormatter = require './request-formatter'
format           = new RequestFormatter()

class MeshbluXenmobile extends EventEmitter
  constructor: ->
    debug 'MeshbluXenmobile constructed'

  close: (callback) =>
    debug 'on close'
    callback()

  onMessage: (message) =>
    debug 'onMessage', message.payload
    { payload } = message
    {endpoint, params} = payload
    requestParams = params

    target = _.find collection, (item) -> item.displayName == endpoint
    debug 'Found Endpoint', target

    { url, params, httpMethod } = target

    bodyParams  = format.matchStyleParams params, requestParams, 'body'
    queryParams = format.matchStyleParams params, requestParams, 'query'
    urlParams   = format.matchStyleParams params, requestParams, 'url'

    debug 'body params', bodyParams
    debug 'query params', queryParams

    requestUrl = format.replaceUrlParams url, urlParams, @defaultUrlParams
    debug 'replaceUrlParams: ', requestUrl

    requestOptions = format.formatRequest requestUrl, bodyParams, queryParams, httpMethod
    debug 'sending request', requestOptions
    # request requestOptions, (error, response, body) =>

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

  start: (@device) =>
    debug 'started', @device.uuid
    @emit 'update', schemas


module.exports = MeshbluXenmobile
