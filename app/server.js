const http = require('http');
const port = process.env.PORT || 8080;
const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end(`<h1>Hello from Ganesh - DevOps Demo</h1><p>Image: ${process.env.IMAGE_TAG || 'local'}</p>`);
});
server.listen(port, () => console.log(`Listening on ${port}`));
