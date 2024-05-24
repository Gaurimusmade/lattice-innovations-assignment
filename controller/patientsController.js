const Patients = require("../services/patientService");
const bcrypt = require("bcryptjs");
const validator = require("validator");

// 1.API for registering a new patient.
module.exports.register = async (req, res) => {
  try {
    const {
      name,
      address,
      email,
      phone_number,
      password,
      photo,
      psychiatrist_id,
    } = req.body;
    const errors = [];
    if (!name) {
      errors.push("Name is required");
    }
    if (address.length < 10) {
      errors.push("Address must be at least 10 characters");
    }
    if (!validator.isEmail(email)) {
      errors.push("Invalid email address");
    }
    if (!validator.isMobilePhone(phone_number, undefined)) {
      errors.push("Invalid phone number");
    }
    if (
      !password ||
      password.length < 8 ||
      password.length > 15 ||
      !/(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/.test(password)
    ) {
      errors.push(
        "Password must be 8-15 characters with at least 1 uppercase, 1 lowercase, and 1 number"
      );
    }
    if (!photo) {
      errors.push("Patient photo is required");
    }
    if (errors.length > 0) {
      return res.status(400).json({ errors });
    }

    if ((await Patients.isEmailExists(req.body.email)) == true) {
      return res
        .status(409)
        .json({ message: "Email already exists, try with different email" });
    }
    const hashPassword = await bcrypt.hash(password, 10);
    const patientData = {
      ...req.body,
      password: hashPassword,
    };
    await Patients.newPatient(patientData);
    res.status(201).json({ message: "Patient registration successful" });
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Internal server error" });
  }
};
