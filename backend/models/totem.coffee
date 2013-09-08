module.exports = (sequelize, DataTypes) ->
	sequelize.define "Totem",
		hash: DataTypes.STRING
		deviceID: DataTypes.INTEGER
