const jwt = require('jwt-simple');
const bcrypt = require('bcrypt');
const db = require('./dbconfig');

const secret = 'rmrl-2023A-Admins';

function createToken(user) {
  const payload = {
    sub: user.id,
    iat: Date.now(),
  };
  return jwt.encode(payload, secret);
}

function authenticate(req, res) {
    const { username, password, ipaddress, browser } = req.body;
  
    db.query('CALL sp_Authenticate_Admin(?,?,?,?)', [username, ipaddress, browser, 0], (error, results) => {
        if (error) {
            res.status(500).json({ error: error.message });
        } else {
            if (results[0][0].ret == 4) {
              res.status(404).json({
                  'status': 404,
                  'statusText': 'Not Found',
                  'message': 'No username registered',
                  'error': results[0][0].ret
              })
            } else {
              
              const token = createToken(results[0][0]);
              const dbpass = results[0][0].password
              
              bcrypt.compare(password, dbpass, (err, dbres) => {
                  if (err) throw err;
                  else if (dbres) {

                      db.query('CALL sp_checkTimeStatus(?,?,?,?,?)', [username, ipaddress, browser, 'admin',token], (error, results) => {
                          if (error) {
                              res.status(500).json({ error: error });
                          } else {
                              if (results[0][0].ret != 2) {
                                  res.status(200).json({
                                      'user': results,
                                      'token': token,
                                      'status': 200,
                                      'statusText': 'Success'
                                  });
                              } else {
                                  res.status(423).json({
                                      'status': 423,
                                      'statusText': 'Locked',
                                      'message': 'Account Locked',
                                  })
                              }
                          }
                      })
                  } else {
                      db.query('CALL sp_Authenticate_Admin(?,?,?,?)', [username, ipaddress, browser, 1], (error, results) => {
                          if (error) {
                              res.status(500).json({ error: error.message });
                          } else {
                              res.status(401).json({
                                  'status': 401,
                                  'statusText': 'Invalid',
                                  'message': 'Wrong Password'
                              })
                          }
                      })
                  }
              })
            }
            
        }
    });
}

function registerAdmin(req, res) {
    const { desc, firstname, lastname, email, username, password } = req.body;
    const salt = bcrypt.genSaltSync(10);
    const hash = bcrypt.hashSync(password, salt);

    db.query('CALL sp_addAdmin(?,?,?,?,?,?)', [desc, firstname, lastname, email,  username, hash], (error, results) => {
      if (error) {
        res.status(500).json({ error: error.message });
      } else {
        res.json({
          status: results[0][0].st_code,
          msg: results[0][0].st_msg
        })
      }
    });
}

function verifyAdminToken(req, res, next) {
  const token = req.headers['authorization'];
  try {
    const payload = jwt.decode(token, secret);
    req.user = { id: payload.sub, username: payload.username };
    next();
  } catch (error) {
    res.status(401).json({ error: error.message });
  }
}

function getAdminData(req, res) {
    const userId = req.user.id;

    db.query('CALL sp_getAdminData(?)', [userId], (error, results) => {
      if (error) {
        res.status(500).json({ error: error.message });
      } else if (results.length === 0) {
        res.status(404).json({ error: 'Admin not found' });
      } else {
        const user = results[0];
        res.json(user);
      }
    });
}

function getAdminListData(req, res) {
    const { query, token } = req.query;

    db.query('CALL sp_getAdminList(?,?)', [query, token], (error, results) => {
      if (error) {
        res.status(500).json({ error: error.message });
      } else {
        res.json(results[0]);
      }
    });
}


module.exports = {
  getAdminListData,
  authenticate,
  verifyAdminToken,
  registerAdmin,
  getAdminData
};
