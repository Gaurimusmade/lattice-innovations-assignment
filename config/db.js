const mysql = require("mysql");

const db = mysql.createConnection({
  user: process.env.DB_USER || "root",
  host: process.env.DB_HOST || "localhost",
  database: process.env.DB_DATABASE || "lattice-innovations",
  password: process.env.DB_PASSWORD || "",
});

db.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL database:", err);
    return;
  }
  console.log("Connected to MySQL database");
});

module.exports = db;
