MESSAGE_SCHEMA = {
  type: 'object'
  properties:
    endpoint:
      type: 'string'
    params:
      type: 'string'
}

ENDPOINT_MAP = [
  {
    'value': 'Get One User'
    'name': 'Get One User'
  }
  {
    'value': 'Delete certificates'
    'name': 'Delete certificates'
  }
]

MESSAGE_FORM_SCHEMA = [
  {
    'key': 'endpoint'
    'type': 'select'
    'titleMap': ENDPOINT_MAP
  }
  {
    'key': 'params'
    # 'condition': "model.endpoint == 'xenmobile/api/v1/certificates/'"
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
