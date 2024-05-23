const express = require("express");
const router = express.Router();
const patientsController = require("../controller/patientsController");

// *POST /api/patients/register *: API for registering a new patient.
router.post("/register", patientsController.register);

module.exports = router;
