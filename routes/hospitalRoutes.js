const express = require("express");
const router = express.Router();
const hospitalController = require("../controller/hospitalController");

// *GET /api/hospital/:hospitalId *: API for fetching psychiatrists and patient details for a hospital.
router.get("/:hospitalId", hospitalController.details);

module.exports = router;
