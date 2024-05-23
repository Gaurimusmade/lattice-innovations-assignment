const db = require("./db");

module.exports.isEmailExists = async (email) => {
  try {
    let result = await PATIENTDATA(email);
    if (result == null) return true;
    return false;
  } catch (err) {
    throw new Error(err);
  }
};

module.exports.newPatient = async (patientData) => {
  try {
    let query = `INSERT INTO patients (name, address, email, phone_number, password, photo, psychiatrist_id) VALUES (?,?,?,?,?,?,?);`;
    let values = [
      patientData.name,
      patientData.address,
      patientData.email,
      patientData.phone_number,
      patientData.password,
      patientData.photo,
      patientData.psychiatrist_id,
    ];
    db.query(query, values);
    return true;
  } catch (err) {
    throw new Error(err);
  }
};

let PATIENTDATA = (email) => {
  return new Promise(async (resolve, reject) => {
    let sqlquery = `SELECT * FROM patients WHERE email ='${email}'`;
    db.query(sqlquery, (err, result) => {
      if (err) return reject(err);
      return resolve(result);
    });
  });
};
