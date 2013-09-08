module.exports = (app, models, util) ->
    app.namespace "/api", ->
    	#Require api routes here in the form of 'require("./route-file-name") app, models, util'
    	require("./totem") app, models, util

    #Require non-api routes here