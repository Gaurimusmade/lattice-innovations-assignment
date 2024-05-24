const db = require("../config/db");

module.exports.hospitalResults = async (hospitalId) => {
  try {
    let result = await HospitalResults(hospitalId);
    return result;
  } catch (err) {
    throw new Error(err);
  }
};

module.exports.psychiatristResults = async (hospitalId) => {
  try {
    let result = await PsychiatristResults(hospitalId);
    return result;
  } catch (err) {
    throw new Error(err);
  }
};

module.exports.patientCountResults = async (psychiatristId) => {
  try {
    let result = await PatientCountResults(psychiatristId);
    return result;
  } catch (err) {
    throw new Error(err);
  }
};

let PatientCountResults = (psychiatristId) => {
  return new Promise(async (resolve, reject) => {
    let sqlquery = `SELECT COUNT(*) AS patient_count FROM patients WHERE psychiatrist_id ='${psychiatristId}'`;
    db.query(sqlquery, (err, result) => {
      if (err) return reject(err);
      return resolve(result);
    });
  });
};

let HospitalResults = (hospitalId) => {
  return new Promise(async (resolve, reject) => {
    let sqlquery = `SELECT * FROM hospitals WHERE id ='${hospitalId}'`;
    db.query(sqlquery, (err, result) => {
      if (err) return reject(err);
      return resolve(result);
    });
  });
};

let PsychiatristResults = (hospitalId) => {
  return new Promise(async (resolve, reject) => {
    let sqlquery = `SELECT id, name FROM psychiatrists WHERE hospital_id ='${hospitalId}'`;
    db.query(sqlquery, (err, result) => {
      if (err) return reject(err);
      return resolve(result);
    });
  });
};
