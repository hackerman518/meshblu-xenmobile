_ = require 'lodash'

class RequestFormatter
  constructor: () ->

  matchStyleParams: (params, requestParams, style) =>
    styleParams = {}
    paramsToMatch = _.map params, (param) ->
      return param.name if param.style == style

    _.each requestParams, (value, key) =>
      _.set(styleParams, key, value) unless _.indexOf(paramsToMatch, key) == -1

    return styleParams

  replaceUrlParams: (url, params, defaults) =>
    params = _.extend params, defaults
    _.each params, (value, key) =>
      re = new RegExp(key, 'g')
      url = url.replace(re, value)
    return url

  formatRequest: (requestUrl, bodyParams, queryParams, httpMethod) =>
    config =
      headers:
        'Accept': 'application/json'
        'User-Agent': 'Octoblu/1.0.0'
        'x-li-format': 'json'
      uri: requestUrl
      method: httpMethod
      followAllRedirects: true
      qs: queryParams

    config.json = bodyParams unless _.isEmpty(bodyParams)
    config

module.exports = RequestFormatter
