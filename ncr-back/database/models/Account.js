module.exports = (sequelize, dataTypes) => {
    const Account = sequelize.define('Account', {
        accountId: {
            type: dataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        clientId: {
            type: dataTypes.INTEGER
        },
        createdAt: {
            type: dataTypes.DATE
        },
        updatedAt: {
            type: dataTypes.DATE,
            allowNull: true
        },
        accountType: {
            type: dataTypes.TEXT,
        },
        cash: {
            type: dataTypes.INTEGER,
            allowNull: true
        }
    }, { 
        tableName: "account",
        timestamps: true
     })


    return Account;
}