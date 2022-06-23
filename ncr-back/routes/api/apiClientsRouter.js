var express = require('express');
var router = express.Router();
const APIClientController = require("../../controllers/clientController");

router.get('/accounts/:clientId', APIClientController.getAccounts);
router.get('/account/:clientId&:accountId', APIClientController.getAccount);
router.get('/transfers/:clientId', APIClientController.getTransfers);
router.post('/transfer/', APIClientController.createTransfer);

module.exports = router;