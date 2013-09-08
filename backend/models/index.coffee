module.exports = (sequelize, models) ->
	models.Totem = sequelize.import __dirname + "/totem"

	#Creates Tables if they don't exist
	defer = sequelize.sync()
	defer.success ->
		console.log "Table Creation Successful"
		#This would be a good place to populate the dev environment with some test data

	defer.error (err) ->
		console.log "There was an error during table synchronization"
		console.log err