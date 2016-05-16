channelJson =
  '_id': '56b390f3b604c4b06ed6de6a'
  'auth_strategy': 'xenmobile'
  'description': ''
  'documentation': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
  'enabled': true
  'name': 'XenMobile'
  'type': 'channel:xenmobile'
  'skipVerifySSL': true
  'bodyFormat': 'json'
  '__v': 0
  'defaultParams': [
    {
      'name': ':hostname'
      'displayName': 'XenMobile URL, include protocol'
      'style': 'url'
      'type': 'string'
      'required': true
    }
    {
      'name': ':port'
      'displayName': 'XenMobile Port'
      'style': 'url'
      'type': 'number'
      'required': true
    }
  ]
  'oauth':
    'development':
      'tokenMethod': 'header'
      'headerParam': 'auth_token'
    'staging':
      'tokenMethod': 'header'
      'headerParam': 'auth_token'
    'production':
      'tokenMethod': 'header'
      'headerParam': 'auth_token'
  'application':
    'base': 'http://:hostname::port/xenmobile/api/v1'
    'resources': [
      {
        'params': []
        'path': '/localusersgroups'
        'displayName': 'Get All Local Users'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html#par_anchortitle_b016'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/localusersgroups'
      }
      {
        'params': [ {
          'required': 'false'
          'value': ''
          'type': 'string'
          'style': 'url'
          'name': ':user'
          'displayName': 'User'
        } ]
        'path': '/localusersgroups/:user'
        'displayName': 'Get One User'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/localusersgroups/:user'
      }
      {
        'params': [
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'role'
            'displayName': 'Role'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'username'
            'displayName': 'Username'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'password'
            'displayName': 'Password'
          }
          {
            'required': 'false'
            'type': 'array'
            'style': 'body'
            'name': 'groups'
            'displayName': 'Groups'
          }
          {
            'displayName': 'Attributes'
            'name': 'attributes'
            'style': 'body'
            'type': 'object'
            'schema':
              'title': 'Attributes'
              'type': 'object'
              'properties':
                'badpwdcount':
                  'required': true
                  'type': 'string'
                'asuseremail':
                  'required': true
                  'type': 'string'
                'company':
                  'required': true
                  'type': 'string'
                'mobile':
                  'required': true
                  'type': 'string'
              'required': true
            'required': true
          }
        ]
        'path': '/localusersgroups'
        'displayName': 'Add User'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'POST'
        'url': ':hostname::port/xenmobile/api/v1/localusersgroups'
      }
      {
        'params': [
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'role'
            'displayName': 'Role'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'username'
            'displayName': 'Username'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'password'
            'displayName': 'Password'
          }
          {
            'required': 'false'
            'type': 'array'
            'style': 'body'
            'name': 'groups'
            'displayName': 'Groups'
          }
          {
            'displayName': 'Attributes'
            'name': 'attributes'
            'style': 'body'
            'type': 'object'
            'schema':
              'title': 'Attributes'
              'type': 'object'
              'properties':
                'badpwdcount':
                  'required': true
                  'type': 'string'
                'asuseremail':
                  'required': true
                  'type': 'string'
                'company':
                  'required': true
                  'type': 'string'
                'mobile':
                  'required': true
                  'type': 'string'
              'required': true
            'required': true
          }
        ]
        'path': '/localusersgroups'
        'displayName': 'Update User'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'PUT'
        'url': ':hostname::port/xenmobile/api/v1/localusersgroups'
      }
      {
        'params': [
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'username'
            'displayName': 'Username'
          }
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'password'
            'displayName': 'Password'
          }
        ]
        'path': '/localusersgroups/resetpassword'
        'displayName': 'Change User Password'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'PUT'
        'url': ':hostname::port/xenmobile/api/v1/localusersgroups/resetpassword'
      }
      {
        'params': [ {
          'required': 'true'
          'type': 'string'
          'style': 'body'
          'name': 'username'
          'displayName': 'Username'
        } ]
        'path': '/localusersgroups/resetpassword'
        'displayName': 'Delete Users'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'DELETE'
        'url': ':hostname::port/xenmobile/api/v1/localusersgroups/resetpassword'
      }
      {
        'params': [
          {
            'type': 'number'
            'style': 'body'
            'name': 'start'
            'displayName': 'Start'
          }
          {
            'type': 'number'
            'style': 'body'
            'name': 'limit'
            'displayName': 'Limit'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'orderBy'
            'displayName': 'Order By'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'sortOrder'
            'displayName': 'Sort Order'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'searchStr'
            'displayName': 'Search String'
          }
        ]
        'path': '/application/filter'
        'displayName': 'Get All Apps by Filter'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/application/filter'
      }
      {
        'params': [ {
          'required': 'true'
          'value': ''
          'type': 'string'
          'style': 'url'
          'name': ':containerId'
          'displayName': 'Contain ID'
        } ]
        'path': '/application/mobile/:containerId'
        'displayName': 'Get Mobile Apps by Container'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/application/mobile/:containerId'
      }
      {
        'params': [ {
          'required': 'true'
          'value': ''
          'type': 'string'
          'style': 'url'
          'name': ':containerId'
          'displayName': 'Contain ID'
        } ]
        'path': '/application/mobile/saas/:containerId'
        'displayName': 'Get SaaS Apps by Container'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/application/mobile/saas/:containerId'
      }
      {
        'params': [ {
          'required': 'true'
          'value': ''
          'type': 'string'
          'style': 'url'
          'name': ':containerId'
          'displayName': 'Contain ID'
        } ]
        'path': '/application/mobile/appstore/:containerId'
        'displayName': 'Get Public Store Apps by Container'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/application/mobile/appstore/:containerId'
      }
      {
        'params': [ {
          'required': 'true'
          'value': ''
          'type': 'string'
          'style': 'url'
          'name': ':containerId'
          'displayName': 'Contain ID'
        } ]
        'path': '/application/mobile/weblink/:containerId'
        'displayName': 'Get Web Link Apps by Container'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/application/mobile/weblink/:containerId'
      }
      {
        'params': [ {
          'required': 'true'
          'value': ''
          'type': 'string'
          'style': 'url'
          'name': ':containerId'
          'displayName': 'Contain ID'
        } ]
        'path': '/application/:containerId'
        'displayName': 'Delete App Container'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'DELETE'
        'url': ':hostname::port/xenmobile/api/v1/application/:containerId'
      }
      {
        'params': []
        'path': '/netscaler'
        'displayName': 'List all NetScaler Gateway configurations'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/netscaler'
      }
      {
        'params': [
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'name'
            'displayName': 'Name'
          }
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'alias'
            'displayName': 'Alias'
          }
          {
            'required': 'true'
            'type': 'boolean'
            'style': 'body'
            'name': 'default'
            'displayName': 'Default'
          }
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'url'
            'displayName': 'URL'
          }
          {
            'required': 'true'
            'type': 'boolean'
            'style': 'body'
            'name': 'passwordRequired'
            'displayName': 'Password Required'
          }
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'logonType'
            'displayName': 'Logon Type'
          }
          {
            'required': true
            'type': 'array'
            'style': 'body'
            'name': 'callback'
            'displayName': 'Callback'
            'schema':
              'title': 'callback'
              'type': 'array'
              'format': 'table'
              'items':
                'type': 'object'
                'properties':
                  'callbackUrl': 'type': 'string'
                  'ip': 'type': 'string'
              'required': true
          }
        ]
        'path': '/netscaler'
        'displayName': 'Add new NetScaler Gateway configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'POST'
        'url': ':hostname::port/xenmobile/api/v1/netscaler'
      }
      {
        'params': [
          {
            'required': 'true'
            'type': 'string'
            'style': 'url'
            'name': ':id'
            'displayName': 'ID'
          }
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'name'
            'displayName': 'Name'
          }
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'alias'
            'displayName': 'Alias'
          }
          {
            'required': 'true'
            'type': 'boolean'
            'style': 'body'
            'name': 'default'
            'displayName': 'Default'
          }
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'url'
            'displayName': 'URL'
          }
          {
            'required': 'true'
            'type': 'boolean'
            'style': 'body'
            'name': 'passwordRequired'
            'displayName': 'Password Required'
          }
          {
            'required': 'true'
            'type': 'string'
            'style': 'body'
            'name': 'logonType'
            'displayName': 'Logon Type'
          }
          {
            'required': true
            'type': 'array'
            'style': 'body'
            'name': 'callback'
            'displayName': 'Callback'
            'schema':
              'title': 'callback'
              'type': 'array'
              'format': 'table'
              'items':
                'type': 'object'
                'properties':
                  'callbackUrl': 'type': 'string'
                  'ip': 'type': 'string'
              'required': true
          }
        ]
        'path': '/netscaler/:id'
        'displayName': 'Edit NetScaler Gateway configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'PUT'
        'url': ':hostname::port/xenmobile/api/v1/netscaler/:id'
      }
      {
        'params': [ {
          'required': 'true'
          'type': 'string'
          'style': 'url'
          'name': ':id'
          'displayName': 'ID'
        } ]
        'path': '/netscaler/:id'
        'displayName': 'Delete Netscaler Gateway Configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'DELETE'
        'url': ':hostname::port/xenmobile/api/v1/netscaler/:id'
      }
      {
        'params': [ {
          'required': 'true'
          'type': 'string'
          'style': 'url'
          'name': ':id'
          'displayName': 'ID'
        } ]
        'path': '/netscaler/default/:id'
        'displayName': 'Set Default Netscaler Gateway Configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'PUT'
        'url': ':hostname::port/xenmobile/api/v1/netscaler/default/:id'
      }
      {
        'params': []
        'path': '/notificationserver'
        'displayName': 'List all SMS and SMTP servers'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/notificationserver'
      }
      {
        'params': [ {
          'required': 'false'
          'type': 'string'
          'style': 'url'
          'name': ':id'
          'displayName': 'ID'
        } ]
        'path': '/notificationserver/:id'
        'displayName': 'Get server details'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/notificationserver/:id'
      }
      {
        'params': [
          {
            'type': 'string'
            'style': 'body'
            'name': 'name'
            'displayName': 'Name'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'description'
            'displayName': 'Description'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'server'
            'displayName': 'Server'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'carrierGateway'
            'displayName': 'Carrier Gateway'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'country'
            'displayName': 'Country'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'https'
            'displayName': 'Https'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'key'
            'displayName': 'Key'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'secret'
            'displayName': 'Secret'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'virtualPhoneNumber'
            'displayName': 'Virtual Phone Number'
          }
        ]
        'path': '/notificationserver/sms'
        'displayName': 'Add SMS server configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'POST'
        'url': ':hostname::port/xenmobile/api/v1/notificationserver/sms'
      }
      {
        'params': [
          {
            'type': 'string'
            'style': 'url'
            'name': ':id'
            'displayName': 'ID'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'name'
            'displayName': 'Name'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'description'
            'displayName': 'Description'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'server'
            'displayName': 'Server'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'carrierGateway'
            'displayName': 'Carrier Gateway'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'country'
            'displayName': 'Country'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'https'
            'displayName': 'Https'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'key'
            'displayName': 'Key'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'secret'
            'displayName': 'Secret'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'virtualPhoneNumber'
            'displayName': 'Virtual Phone Number'
          }
        ]
        'path': '/notificationserver/sms/:id'
        'displayName': 'Edit SMS server configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'PUT'
        'url': ':hostname::port/xenmobile/api/v1/notificationserver/sms/:id'
      }
      {
        'params': [
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'name'
            'displayName': 'Name'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'description'
            'displayName': 'Description'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'server'
            'displayName': 'Server'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'secureChannelProtocol'
            'displayName': 'Secure Channel Protocol'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'port'
            'displayName': 'Port'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'authentication'
            'displayName': 'Authentication'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'username'
            'displayName': 'Username'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'password'
            'displayName': 'Password'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'msSecurePasswordAuth'
            'displayName': 'msSecurePasswordAuth'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'fromName'
            'displayName': 'From Name'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'fromEmail'
            'displayName': 'From Email'
          }
          {
            'required': 'false'
            'type': 'number'
            'style': 'body'
            'name': 'numOfRetries'
            'displayName': 'Number of Retries'
          }
          {
            'required': 'false'
            'type': 'number'
            'style': 'body'
            'name': 'timeout'
            'displayName': 'Timeout'
          }
          {
            'required': 'false'
            'type': 'number'
            'style': 'body'
            'name': 'maxRecipients'
            'displayName': 'Max Recipients'
          }
        ]
        'path': '/notificationserver/smtp'
        'displayName': 'Add SMTP server configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'POST'
        'url': ':hostname::port/xenmobile/api/v1/notificationserver/smtp'
      }
      {
        'params': [
          {
            'required': 'false'
            'type': 'string'
            'style': 'url'
            'name': ':id'
            'displayName': 'ID'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'name'
            'displayName': 'Name'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'description'
            'displayName': 'Description'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'server'
            'displayName': 'Server'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'secureChannelProtocol'
            'displayName': 'Secure Channel Protocol'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'port'
            'displayName': 'Port'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'authentication'
            'displayName': 'Authentication'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'username'
            'displayName': 'Username'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'password'
            'displayName': 'Password'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'msSecurePasswordAuth'
            'displayName': 'msSecurePasswordAuth'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'fromName'
            'displayName': 'From Name'
          }
          {
            'required': 'false'
            'type': 'string'
            'style': 'body'
            'name': 'fromEmail'
            'displayName': 'From Email'
          }
          {
            'required': 'false'
            'type': 'number'
            'style': 'body'
            'name': 'numOfRetries'
            'displayName': 'Number of Retries'
          }
          {
            'required': 'false'
            'type': 'number'
            'style': 'body'
            'name': 'timeout'
            'displayName': 'Timeout'
          }
          {
            'required': 'false'
            'type': 'number'
            'style': 'body'
            'name': 'maxRecipients'
            'displayName': 'Max Recipients'
          }
        ]
        'path': '/notificationserver/smtp/:id'
        'displayName': 'Edit SMTP server configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'POST'
        'url': ':hostname::port/xenmobile/api/v1/notificationserver/smtp/:id'
      }
      {
        'params': [ {
          'required': 'false'
          'value': ''
          'type': 'string'
          'style': 'url'
          'name': ':id'
          'displayName': 'ID'
        } ]
        'path': '/notificationserver/:id'
        'displayName': 'Delete server configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'DELETE'
        'url': ':hostname::port/xenmobile/api/v1/notificationserver/:id'
      }
      {
        'params': [ {
          'required': 'false'
          'value': ''
          'type': 'string'
          'style': 'url'
          'name': ':id'
          'displayName': 'ID'
        } ]
        'path': '/notificationserver/activate/smtp/:id'
        'displayName': 'Set default SMTP configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'PUT'
        'url': ':hostname::port/xenmobile/api/v1/notificationserver/activate/smtp/:id'
      }
      {
        'params': [ {
          'required': 'false'
          'value': ''
          'type': 'string'
          'style': 'url'
          'name': ':id'
          'displayName': 'ID'
        } ]
        'path': '/notificationserver/activate/sms/:id'
        'displayName': 'Set default SMS configuration'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'PUT'
        'url': ':hostname::port/xenmobile/api/v1/notificationserver/activate/sms/:id'
      }
      {
        'params': [
          {
            'type': 'string'
            'style': 'body'
            'name': 'name'
            'displayName': 'Name'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'description'
            'displayName': 'Description'
          }
          {
            'type': 'boolean'
            'style': 'body'
            'name': 'anonymousUser'
            'displayName': 'Anonymous User?'
          }
          {
            'required': true
            'type': 'array'
            'style': 'body'
            'name': 'devicePolicies'
            'displayName': 'Device Policies'
            'schema':
              'title': 'devicePolicies'
              'type': 'array'
              'format': 'table'
              'items':
                'type': 'object'
                'properties':
                  'name': 'type': 'string'
                  'priority': 'type': 'number'
              'required': true
          }
          {
            'required': true
            'type': 'array'
            'style': 'body'
            'name': 'applications'
            'displayName': 'Applications'
            'schema':
              'title': 'applications'
              'type': 'array'
              'format': 'table'
              'items':
                'type': 'object'
                'properties':
                  'name': 'type': 'string'
                  'required': 'type': 'boolean'
              'required': true
          }
          {
            'required': true
            'type': 'array'
            'style': 'body'
            'name': 'smartActions'
            'displayName': 'Smart Actions'
            'schema':
              'title': 'smartActions'
              'type': 'array'
              'format': 'table'
              'items':
                'type': 'object'
                'properties':
                  'name': 'type': 'string'
                  'priority': 'type': 'number'
              'required': true
          }
          {
            'required': true
            'type': 'array'
            'style': 'body'
            'name': 'groups'
            'displayName': 'Groups'
            'schema':
              'title': 'groups'
              'type': 'array'
              'format': 'table'
              'items':
                'type': 'object'
                'properties':
                  'name': 'type': 'string'
                  'domainName': 'type': 'string'
                  'uniqueName': 'type': 'string'
                  'uniqueId': 'type': 'string'
              'required': true
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'rules'
            'displayName': 'Rules'
          }
        ]
        'path': '/deliverygroups'
        'displayName': 'Add delivery group'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'POST'
        'url': ':hostname::port/xenmobile/api/v1/deliverygroups'
      }
      {
        'params': [ {
          'type': 'array'
          'style': 'body'
          'displayName': 'Groups'
        } ]
        'path': '/deliverygroups'
        'displayName': 'Delete delivery group'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'DELETE'
        'url': ':hostname::port/xenmobile/api/v1/deliverygroups'
      }
      {
        'params': []
        'path': '/serverproperties'
        'displayName': 'Get all server properties'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'GET'
        'url': ':hostname::port/xenmobile/api/v1/serverproperties'
      }
      {
        'params': [
          {
            'type': 'number'
            'style': 'body'
            'name': 'start'
            'displayName': 'Start'
          }
          {
            'type': 'number'
            'style': 'body'
            'name': 'limit'
            'displayName': 'Limit'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'orderBy'
            'displayName': 'Order By'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'sortOrder'
            'displayName': 'Sort Order'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'searchStr'
            'displayName': 'Search String'
          }
        ]
        'path': '/serverproperties/filter'
        'displayName': 'Get server properties by filter'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'POST'
        'url': ':hostname::port/xenmobile/api/v1/serverproperties/filter'
      }
      {
        'params': [
          {
            'type': 'string'
            'style': 'body'
            'name': 'name'
            'displayName': 'Name'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'value'
            'displayName': 'Value'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'displayName'
            'displayName': 'Display Name'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'description'
            'displayName': 'Description'
          }
        ]
        'path': '/serverproperties'
        'displayName': 'Add server property'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'POST'
        'url': ':hostname::port/xenmobile/api/v1/serverproperties'
      }
      {
        'params': [
          {
            'type': 'string'
            'style': 'body'
            'name': 'name'
            'displayName': 'Name'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'value'
            'displayName': 'Value'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'displayName'
            'displayName': 'Display Name'
          }
          {
            'type': 'string'
            'style': 'body'
            'name': 'description'
            'displayName': 'Description'
          }
        ]
        'path': '/serverproperties'
        'displayName': 'Edit server properties'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'PUT'
        'url': ':hostname::port/xenmobile/api/v1/serverproperties'
      }
      {
        'params': [ {
          'type': 'array'
          'style': 'body'
          'name': 'names'
          'displayName': 'Names'
        } ]
        'path': '/serverproperties/reset'
        'displayName': 'Reset server properties'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'POST'
        'url': ':hostname::port/xenmobile/api/v1/serverproperties/reset'
      }
      {
        'params': [ {
          'type': 'object'
          'style': 'body'
          'displayName': 'Servers to Delete'
        } ]
        'path': '/serverproperties'
        'displayName': 'Delete server properties'
        'authentication': 'required': 'true'
        'doc': 'url': 'http://docs.citrix.com/en-us/xenmobile/10-1/xmob-support-wrapper/xenmobile-rest-api-reference.html'
        'httpMethod': 'DELETE'
        'url': ':hostname::port/xenmobile/api/v1/serverproperties'
      }
    ]

module.exports = channelJson
