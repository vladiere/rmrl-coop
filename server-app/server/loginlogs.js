const jwt = require('jwt-simple');
const bcrypt = require('bcrypt');
const db = require('./dbconfig');

const secret = 'rmrl-2023A-Qwerty';

function createToken(user) {
  const payload = {
    sub: user.id,
    iat: Date.now(),
  };
  return jwt.encode(payload, secret);
}

function getLoginLogs (req, res) {
    const { id } = req.query;
    let q = id === "0" ? 0 : id
    db.query('CALL sp_fetchLoginLogs(?,?)', [q, 0], (err, results) => {
        if (err) {
            res.status(500).send(err.message)
        } else {
            res.status(200).json(results[0])
        }
    })
}

module.exports = {
    getLoginLogs,

}