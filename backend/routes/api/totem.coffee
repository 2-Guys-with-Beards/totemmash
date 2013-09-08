module.exports = (app, model, util) ->
	#Retrieve Totem
	app.get "/totem/:id", (req, res) ->
		res.end "Do Something!"

	#Retrieve all Totems
	app.get "/totem", (req, res) ->
		res.end "Do Something!"

	#Register New Totem
	app.post "/totem", (req, res) ->
		res.end "Do Something!"

	#Check Totem
	app.post "/checktotem", (req, res) ->
		res.end "Do Something!"

	#Delete Totem
	app.delete "/totem/:id", (req, res) ->
		res.end "Do Something"