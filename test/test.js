var http = require('http');
var server = require('./server')
var assert = require('assert');


describe('HTTP Server Test', function() {
	
	describe('/', function() {
		it('Your nickname', function(done) {
			http.get('http://127.0.0.1:8989', function(response) {
				
				assert.equal(response.statusCode, 200);

                                var body = '';
				response.on('data', function(d) {
					body += d;
				});
				response.on('end', function() {
					assert.equal(body, 'Your nickname');
					done();
				});
			});
		});
	});
});
