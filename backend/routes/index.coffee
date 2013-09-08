module.exports = (app, models, util) ->
	require("./api") app, models, util

	#Other routes not API related
	#Default route
	app.get "*", (req, res) ->
		res.send 404, "Not Found"