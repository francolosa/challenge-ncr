module.exports = (sequelize, dataTypes) => {
    const Transfer = sequelize.define('Transfer', {
        transferId: {
            type: dataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        createdAt: {
            type: dataTypes.DATE
        },
        updatedAt: {
            type: dataTypes.DATE,
            allowNull: true
        },
        originAccountId: {
            type: dataTypes.INTEGER,
        },
        destinyAccountId: {
            type: dataTypes.INTEGER,
        },
        amount: {
            type: dataTypes.INTEGER,
        },
        clientId: {
            type:dataTypes.INTEGER
        }
    }, { 
        tableName: "transfer",
        timestamps: true
     })


    return Transfer;
}