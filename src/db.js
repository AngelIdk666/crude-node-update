
const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: process.env.DB_HOST || 'mysql-service',  // Nombre del servicio MySQL en Kubernetes
  user: process.env.DB_USER || 'usuario',
  password: process.env.DB_PASSWORD || 'contraseña',
  database: process.env.DB_NAME || 'mi_base_de_datos'
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to the database:', err.stack);
    return;
  }
  console.log('Connected to the database');
});

module.exports = connection;
