const Hapi = require("hapi");
const routes = require("./routes");
const models = require("./models");


var server = Hapi.Server({
    port: 3333,
    host: 'localhost'
});

// For each defined route API, register in server object
routes.forEach(oneRoute => {
    server.route(oneRoute);  
});

module.exports = server;