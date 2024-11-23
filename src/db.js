const mysql = require("mysql2");

const pool = mysql.createPool({
  host: process.env.DB_HOST || "database", // Nombre del servicio MySQL
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASSWORD || "root", // Contraseña configurada en docker-compose.yml
  database: process.env.DB_NAME || "CrudNodejs",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

module.exports = pool;
