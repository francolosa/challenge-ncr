module.exports = (sequelize, dataTypes) => {
    const Client = sequelize.define('Client', {
        clientId: {
            type: dataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        name: {
            allowNull: false,
            type: dataTypes.STRING,
            allowNull: false
        },
        lastName: {
            allowNull: false,
            type: dataTypes.STRING,
            allowNull: false
        },
        createdAt: {
            type: dataTypes.DATE
        },
        updatedAt: {
            type: dataTypes.DATE,
            allowNull: true
        },
        
    }, { 
        tableName: "client",
        timestamps: true
     })
    

    return Client;
}