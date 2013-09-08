module.exports = (sequelize, models) ->
	models.Totem = sequelize.import __dirname + "/totem"

	defer = sequelize.sync()
	defer.success ->
		console.log "Table Creation Successful"

	defer.error (err) ->
		console.log "There was an error during table synchronization"
		console.log err