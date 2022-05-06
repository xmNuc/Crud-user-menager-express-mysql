const express = require('express');
const router = express.Router();
const userController = require('../controllers/user-controller');

//Routing CRUD options

router.get('/', userController.view);
router.post('/', userController.search);
router.get('/adduser', userController.adduserForm);
router.post('/adduser', userController.create);
router.get('/edituser/:id', userController.editUser);
router.post('/edituser/:id', userController.update);
router.get('/:id', userController.delete);
router.get('/viewuser/:id', userController.viewUser);

module.exports = router;
