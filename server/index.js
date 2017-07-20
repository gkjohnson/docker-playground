var StaticServer = require('static-server');
var server = new StaticServer({ rootPath: '.', port: 9080 })
server.start(function() {
	console.log('listening on ', server.port)
})