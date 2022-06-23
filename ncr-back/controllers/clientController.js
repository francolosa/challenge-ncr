let db = require("../database/models");
const Account = require('../database/models/Account');
const Transfer = require("../database/models/Transfer");
const Client = require("../database/models/Client");
const { response } = require("express");

const clientController = {
    getAccounts: (req, res) => {
        //GET CUENTAS (PARAMETROS: NUMERO DE CLIENTE)
        db.Account.findAll({
           where: {
                clientId: req.params.clientId
            }
        })
        .then((response) => {
            res.send(response)
        })
    },
    getAccount: async (req, res) => {
        //GET CUENTA (PARAMETROS: NUMERO DE CLIENTE Y NUMERO DE CUENTA)
        const client = await db.Client.findByPk(1);
        const account = await db.Account.findByPk(req.params.accountId);
        let response = {
                client: {...client.dataValues},
                account: {...account.dataValues}
        }
        res.send(response)
    },
    getTransfers: async (req, res) => {
        //  GET TRANSFERS (PARAMETRO: NUMERO DE CLIENTE)
        console.log(req.params.clientId)
        const response = await db.Transfer.findAll({
            where: {
                clientId: req.params.clientId
            }
        })  
            res.send(response)
    },
    createTransfer: async (req, res) => {
        let cashOrigin = await db.Account.findByPk(req.body.originAccountId);
        let cashDestiny = await db.Account.findByPk(req.body.destinyAccountId);
        
        if ( cashOrigin.cash - parseInt(req.body.amount) > 0){
            await db.Account.update(
                {cash: cashOrigin.cash-parseInt(req.body.amount)},
                {where: {accountId: req.body.originAccountId}}
            )
            await db.Account.update(
                {cash: cashDestiny.cash+parseInt(req.body.amount)},
                {where: {accountId: req.body.destinyAccountId}}
            )
            await db.Transfer.create({
                clientId: req.body.clientId,
                originAccountId: req.body.originAccountId,
                destinyAccountId: req.body.destinyAccountId,
                amount: req.body.amount
            }) 
        } 
        res.send("status 200")
    }
}

module.exports = clientController;