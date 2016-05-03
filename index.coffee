{EventEmitter}  = require 'events'
debug           = require('debug')('meshblu-connector-meshblu-xenmobile:index')
_               = require 'lodash'
schemas         = require './legacySchema'
collection         = require './collection'

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

    bodyParams = @matchStyleParams params, requestParams, 'body'
    queryParams = @matchStyleParams params, requestParams, 'query'
    urlParams = @matchStyleParams params, requestParams, 'url'

    debug 'body params', bodyParams
    debug 'query params', queryParams

    requestUrl = @replaceUrlParams url, urlParams
    debug 'replaceUrlParams: ', requestUrl
    # match endpoint to displayName
    # format request
    # add auth
    # send request

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

  matchStyleParams: (params, requestParams, style) =>
    styleParams = {}
    paramsToMatch = _.map params, (param) ->
      return param.name if param.style == style

    _.each requestParams, (value, key) =>
      _.set(styleParams, key, value) unless _.indexOf(paramsToMatch, key) == -1

    return styleParams

  replaceUrlParams: (url, params) =>
    params = _.extend params, @defaultUrlParams
    _.each params, (value, key) =>
      re = new RegExp(key, 'g')
      url = url.replace(re, value)
    return url


module.exports = MeshbluXenmobile
