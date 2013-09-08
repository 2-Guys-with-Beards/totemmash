module.exports = (app, models, util) ->
        app.namespace "/api", ->
        	#Require routes here in the form of 'require("./route-file-name") app, models, util'