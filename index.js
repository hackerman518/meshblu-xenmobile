process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0"
require('coffee-script/register');
module.exports = require('./index.coffee');
