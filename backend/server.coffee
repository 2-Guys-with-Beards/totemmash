express = require "express"
Sequelize = require("sequelize-postgres").sequelize
postgres = require("sequelize-postgres").postgres
utility =
	bcrypt: require "bcrypt-nodejs"
require "express-namespace"
models = {}
port = 3000

#Configuration
console.log "Configuring Modules"
app = express()
sequelize = new Sequelize("postgres://kjones@localhost:5432/totemmash_local")
app.configure ->
	app.use express.bodyParser()

#Schema and Models
console.log "Creating Sequelize Models"
require("./models") sequelize, models

#Routes
console.log "Creating Routes"
require("./routes") app, models, utility

#Start Up
app.listen port
console.log "Server is now listening on port #{port}"