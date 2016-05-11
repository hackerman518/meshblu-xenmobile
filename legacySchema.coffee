MESSAGE_SCHEMA = {
  type: 'object'
  properties:
    endpoint:
      type: 'string'
    ':user':
      type: 'string'
    role:
      type: 'string'
    username:
      type: 'string'
    password:
      type: 'string'
    groups:
      type: 'array'
    attributes:
      type: 'object'
      properties:
        badpwdcount:
          type: 'string'
        asuseremail:
          type: 'string'
        company:
          type: 'string'
        mobile:
          type: 'string'
    start:
      type: 'number'
    limit:
      type: 'number'
    orderBy:
      type: 'string'
    sortOrder:
      type: 'string'
    searchStr:
      type: 'string'
    ':containerId':
      type: 'string'
    name:
      type: 'string'
    alias:
      type: 'string'
    default:
      type: 'boolean'
    url:
      type: 'string'
    passwordRequired:
      type: 'boolean'
    logonType:
      type: 'string'

}

ENDPOINT_MAP = [
  {
    'value': 'Get All Local Users'
    'name': 'Get All Local Users'
  }
  {
    'value': 'Get One User'
    'name': 'Get One User'
  }
  {
    'value': 'Delete certificates'
    'name': 'Delete certificates'
  }
  {
    'value': 'Add User'
    'name': 'Add User'
  }
  {
    'value': 'Update User'
    'name': 'Update User'
  }
  {
    'value': 'Change User Password'
    'name': 'Change User Password'
  }
  {
    'value': 'Delete Users'
    'name': 'Delete Users'
  }
  {
    'value': 'Get All Apps by Filter'
    'name': 'Get All Apps by Filter'
  }
  {
    'value': 'Get Mobile Apps by Container'
    'name': 'Get Mobile Apps by Container'
  }
  {
    'value': 'Get SaaS Apps by Container'
    'name': 'Get SaaS Apps by Container'
  }
  {
    'value': 'Get Public Store Apps by Container'
    'name': 'Get Public Store Apps by Container'
  }
  {
    'value': 'Get Web Link Apps by Container'
    'name': 'Get Web Link Apps by Container'
  }
  {
    'value': 'Delete App Container'
    'name': 'Delete App Container'
  }
  {
    'value': 'List all NetScaler Gateway configurations'
    'name': 'List all NetScaler Gateway configurations'
  }
  {
    'value': 'Add new NetScaler Gateway configuration'
    'name': 'Add new NetScaler Gateway configuration'
  }
  {
    'value': 'Edit NetScaler Gateway configuration'
    'name': 'Edit NetScaler Gateway configuration'
  }
  {
    'value': 'Delete Netscaler Gateway Configuration'
    'name': 'Delete Netscaler Gateway Configuration'
  }
  {
    'value': 'Set Default Netscaler Gateway Configuration'
    'name': 'Set Default Netscaler Gateway Configuration'
  }
  {
    'value': 'List all SMS and SMTP servers'
    'name': 'List all SMS and SMTP servers'
  }
  {
    'value': 'Get server details'
    'name': 'Get server details'
  }
  {
    'value': 'Add SMS server configuration'
    'name': 'Add SMS server configuration'
  }
  {
    'value': 'Add SMTP server configuration'
    'name': 'Add SMTP server configuration'
  }
  {
    'value': 'Edit SMTP server configuration'
    'name': 'Edit SMTP server configuration'
  }
  {
    'value': 'Delete server configuration'
    'name': 'Delete server configuration'
  }
  {
    'value': 'Set default SMTP configuration'
    'name': 'Set default SMTP configuration'
  }
  {
    'value': 'Set default SMS configuration'
    'name': 'Set default SMS configuration'
  }
  {
    'value': 'Add delivery group'
    'name': 'Add delivery group'
  }
  {
    'value': 'Delete delivery group'
    'name': 'Delete delivery group'
  }
  {
    'value': 'Get all server properties'
    'name': 'Get all server properties'
  }
  {
    'value': 'Get server properties by filter'
    'name': 'Get server properties by filter'
  }
  {
    'value': 'Add server property'
    'name': 'Add server property'
  }
  {
    'value': 'Edit server properties'
    'name': 'Edit server properties'
  }
  {
    'value': 'Reset server properties'
    'name': 'Reset server properties'
  }
  {
    'value': 'Delete server properties'
    'name': 'Delete server properties'
  }
]

MESSAGE_FORM_SCHEMA = [
  {
    'key': 'endpoint'
    'type': 'select'
    'titleMap': ENDPOINT_MAP
  }
  {
    'key': ':user'
    'condition': "model.endpoint == 'Get One User'"
  }
  {
    'key': 'role'
    'condition': "model.endpoint == 'Add User' || model.endpoint == 'Update User'"
  }
  {
    'key': 'username'
    'condition': "model.endpoint == 'Add User' || model.endpoint == 'Update User' || model.endpoint == 'Change User Password' || model.endpoint == 'Delete Users'"
  }
  {
    'key': 'password'
    'condition': "model.endpoint == 'Add User' || model.endpoint == 'Update User' || model.endpoint == 'Change User Password'"
  }
  {
    'key': 'groups'
    'condition': "model.endpoint == 'Add User' || model.endpoint == 'Update User'"
  }
  {
    'key': 'attributes'
    'condition': "model.endpoint == 'Add User' || model.endpoint == 'Update User'"
  }
  {
    'key': 'start'
    'condition': "model.endpoint == 'Get All Apps by Filter'"
  }
  {
    'key': 'limit'
    'condition': "model.endpoint == 'Get All Apps by Filter'"
  }
  {
    'key': 'orderBy'
    'condition': "model.endpoint == 'Get All Apps by Filter'"
  }
  {
    'key': 'sortOrder'
    'condition': "model.endpoint == 'Get All Apps by Filter'"
  }
  {
    'key': 'searchStr'
    'condition': "model.endpoint == 'Get All Apps by Filter'"
  }
  {
    'key': ':containerId'
    'condition': "model.endpoint == 'Get Mobile Apps by Container' || model.endpoint == 'Get SaaS Apps by Container' || model.endpoint == 'Get Public Store Apps by Container' || model.endpoint == 'Get Web Link Apps by Container' || model.endpoint == 'Delete App Container'"
  }
]

OPTIONS_SCHEMA = {
  type: 'object'
  properties:
    host:
      type: 'string'
      required: true
    port:
      type: 'string'
      required: true
    username:
      type: 'string'
      required: false
    password:
      type: 'string'
      required: false
}

module.exports = {
  messageSchema: MESSAGE_SCHEMA
  messageFormSchema: MESSAGE_FORM_SCHEMA
  optionsSchema: OPTIONS_SCHEMA
}
