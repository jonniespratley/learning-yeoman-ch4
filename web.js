// web.js
var express = require("express");
var logfmt = require("logfmt");
var fs = require('fs');
var _ = require('underscore');
var server = express();
var config = JSON.parse(fs.readFileSync('app/config.json'));
var port = process.env.PORT || 5000;

server.use(logfmt.requestLogger());
server.use(express.static(__dirname + '/app'));
server.use('/', express.directory('/app'));
/*
_.each(config.modules, function(module, moduleName) {
	console.log('MOdule', module);
	if(module.routes) {
		_.each(module.routes, function(methodName, route) {
			server.get(route, function(req, res) {
				res.sendFile('app/index.html');
			});
		});
	}
});
*/
server.listen(port, function() {
	console.log("Listening on " + port);
});
