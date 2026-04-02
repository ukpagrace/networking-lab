const http = require('http');
http.createServer((req, res) => {
  res.writeHead(200);
  res.end('Hello from Kubernetes on VM2 hope it works this time!\n');
}).listen(3000, '0.0.0.0');
console.log('Server running on port 3000');
