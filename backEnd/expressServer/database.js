const { Pool } = require('pg');
const SECRETS = require('./Secrets/Secrets.json');


const USERNAME = SECRETS.database.username;
const PASSWORD = SECRETS.database.password;
const DBNAME = SECRETS.database.dbName;


DATABASE_URL = 'postgres://' + USERNAME + ':' + PASSWORD + '@localhost:5432/' + DBNAME;


const http = new Pool({
    connectionString: DATABASE_URL
});

function query(text) {
    return new Promise((resolve, reject) => {
    http
        .query(text)
        .then((res) => {
            resolve(res);
        })
        .catch((err) => {
            reject(err);
        });
    });
}

module.exports = {
    query
};