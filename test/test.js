var http = require('http');
var assert = require('assert');

var server = require('./server.js');

describe('HTTP Server Test', function() {
	
	before(function() {
		server.listen(8989);
	});

	
	after(function() {
		server.close();
	});

	describe('/', function() {
		it('should be nickname!', function(done) {
			http.get('http://127.0.0.1:8989', function(response) {
				
				assert.equal(response.statusCode, 200);

                                var body = '';
				response.on('data', function(d) {
					body += d;
				});
				response.on('end', function() {
					assert.equal(body, 'nickname');
					done();
				});
			});
		});
	});
});
