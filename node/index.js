const express = require('express'),
	exec = require('child_process').exec
const app = express()
const port = 9000

app.get('/', function (req, res) {
	res.sendfile(__dirname + '/main.html');
});

app.get('/normal', function (req, res) {
	child = exec('/home/pi/RPiPlay/node/start_normal.sh', function(error,stdout, stderr){
		console.log(error);
		console.log(stdout);
		console.log(stderr);
	});
	res.send('success');
});

app.get('/rotate', function (req, res) {
	child = exec('/home/pi/RPiPlay/node/start_rotate.sh', function(error,stdout, stderr){
		console.log(error);
		console.log(stdout);
		console.log(stderr);
	});
	res.send('success');
});

app.listen(port, () => console.log(`Screen app listening on port ${port}!`))
