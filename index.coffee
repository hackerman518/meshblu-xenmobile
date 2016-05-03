{EventEmitter}   = require 'events'
debug            = require('debug')('meshblu-connector-meshblu-xenmobile:index')
_                = require 'lodash'
schemas          = require './legacySchema'
channelJson       = require './channelJson'
request          = require 'request'
RequestFormatter = require './request-formatter'
format           = new RequestFormatter(channelJson)

class MeshbluXenmobile extends EventEmitter
  constructor: ->
    debug 'MeshbluXenmobile constructed'

  close: (callback) =>
    debug 'on close'
    callback()

  onMessage: (message) =>
    debug 'onMessage', message.payload
    requestParams = format.processMessage message, @auth, @defaultUrlParams
    debug 'request params', requestParams

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
