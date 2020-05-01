const { Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  password: "postgres",
  host: "localhost",
  database: "lightbnb",
});

module.exports = {
  query: (text, params, callback) => {
    return pool.query(text, params, callback);
  },
};
