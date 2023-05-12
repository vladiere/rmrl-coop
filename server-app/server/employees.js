const jwt = require('jwt-simple');
const db = require('./dbconfig');

const secret = 'rmrl-2023A-Employees';

function createToken(user) {
  const payload = {
    sub: user.id,
    iat: Date.now(),
  };
  return jwt.encode(payload, secret);
}

function registerEmployee(req, res) {
    const { id, firstname, lastname,  number, address, email, position } = req.body;
    
    db.query('CALL sp_addEmployee(?,?,?,?,?,?,?)', [ id, firstname, lastname, number, address, email, position ], (error, results) => {
      if (error) {
        res.status(500).json({ error: error.message });
      } else {
        console.log(results);
        res.status(results[0][0].stat).json({ 
          'status': results[0][0].stat,
          'message': results[0][0].ret,
        });
      }
    });
}

function updateEmployee(req, res) {
  
  const { id, firstname, lastname,  number, address, email, position } = req.body;
  
  db.query('CALL sp_addEmployee(?,?,?,?,?,?,?)', [ id, firstname, lastname, number, address, email, position ], (error, results) => {
    if (error) {
      res.status(500).json({ error: error.message, });
    } else {
      console.log(results);
      res.status(results[0][0].stat).json({ 
        'status': results[0][0].stat,
        'message': results[0][0].ret,
      });
    }
  });
}

function getEmployeesData (req, res) {
    const { id } = req.query;
    let q = id === "0" ? 0 : id
    db.query('CALL sp_fetchEmployees(?, ?)', [q, 0], (error, results) => {
      if (error) {
        res.status(500).json({ error: error.message });
      } else if (results.length === 0) {
        res.status(404).json({ error: 'Employees not found' });
      } else {
        const member = results[0];
        res.json({
          status: 200,
          statusText: 'ok',
          data: member
        });
      }
    });
}


function removeEmployeeData (req, res) {
    const { id } = req.body
    
    db.query('CALL sp_fetchEmployees(?,?)', [0, id], (error, results) => {
        if (error) {
          res.status(500).json({ error: error.message });
        } else {
          res.status(200).json(results[0]);
        }
    })
}

module.exports = {
    getEmployeesData,
    removeEmployeeData,
    registerEmployee,
    updateEmployee,

}
