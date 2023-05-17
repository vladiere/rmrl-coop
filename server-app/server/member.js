const jwt = require('jwt-simple');
const bcrypt = require('bcrypt');
const db = require('./dbconfig');

const secret = 'rmrl-2023A-Members';

function createToken(user) {
  const payload = {
    sub: user.id,
    iat: Date.now(),
  };
  return jwt.encode(payload, secret);
}

function loginmember(req, res) {
    const { lastname, password, browser, ipaddress } = req.body;
    
    db.query('CALL sp_Authenticate_Member(?,?,?,?)', [lastname, ipaddress, browser, 0], (error, results) => {
        if (error) {
            res.status(500).json({ error: error });
        } else {
            if (results[0][0].ret == 4) {
              res.status(404).json({
                  'status': 404,
                  'statusText': 'Not Found',
                  'message': 'No lastname registered',
                  'error': results[0][0].ret
              })
            } else {
              
              if (results[0][0].ret == 5) {
                res.status(410).json({
                  status: 410,
                  message: results[0][0].stat_ret
                })
              } else {
                const token = createToken(results[1]);
                const dbpass = results[0][0].password
                
                bcrypt.compare(password, dbpass, (err, dbres) => {
                    if (err) throw err;
                    else if (dbres) {

                        db.query('CALL sp_checkTimeStatus(?,?,?,?,?)', [lastname, ipaddress, browser, 'member', token], (error, results) => {
                            if (error) {
                                res.status(500).json({ error: error });
                            } else {
                                if (results[1].ret != 2) {
                                    res.status(200).json({
                                        'user': results,
                                        'token': token,
                                        'status': 200,
                                        'statusText': 'Success',
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
                        db.query('CALL sp_Authenticate_Member(?,?,?,?)', [lastname, ipaddress, browser, 1], (error, results) => {
                            if (error) {
                                res.status(500).json({ error: error.message });
                            } else {
                                res.status(401).json({
                                    'status': 401,
                                    'statusText': 'Invalid',
                                    'message': results[0][0].ret_msg
                                })
                            }
                        })
                    }
                })
              }
            }
            
        }
    });
}

function registerMember(req, res) {
    const { firstname, middlename, lastname, gender, number, email_add, birthdate,  cstatus, address, password, beneficiary, business_work, share_capital } = req.body;

    const salt = bcrypt.genSaltSync(10);
    const hash = bcrypt.hashSync(password, salt);
    db.query('CALL sp_addMember(?,?,?,?,?,?,?,?,?,?,?,?,?,?)', [0, firstname, middlename, lastname, gender, number, birthdate, email_add, cstatus, address, hash, beneficiary, business_work, share_capital], (error, results) => {
      if (error) {
        res.status(500).json({ error: error.message });
      } else {
        res.status(200).json({ 
          'status': 200,
          'statusText': 'Success',
          'message': 'New Member Added',
        });
      }
    });
}

function verifyMemberToken(req, res, next) {
  const token = req.headers['authorization'];
  try {
    const payload = jwt.decode(token, secret);
    req.user = { id: payload.sub, username: payload.username };
    next();
  } catch (error) {
    res.status(401).json({ error: error.message });
  }
}

function getMemberData(req, res) {
    const { id } = req.query;
    let q = id === "0" ? 0 : id
    db.query('CALL sp_fetchMembers(?, ?)', [q, 0], (error, results) => {
      if (error) {
        res.status(500).json({ error: error.message });
      } else if (results.length === 0) {
        res.status(404).json({ error: 'Member not found' });
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

function removeMemberData (req, res) {
  const { id } = req.body
  db.query('CALL sp_fetchMembers(?,?)', [0, id], (error, results) => {
    if (error) {
        res.status(500).json({ error: error.message });
    } else {
      res.status(200).json(results[0]);
    }
  })
}

function updateMemberData (req, res) {
  const { id, firstname, middlename, lastname, number, address, password, beneficiary, civil_status, email_add, business_work } = req.body;
  
  const salt = bcrypt.genSaltSync(10);
  const hash = bcrypt.hashSync(password, salt);
  db.query('CALL sp_addMember(?,?,?,?,?,?,?,?,?,?,?,?,?,?)', [id, firstname, middlename, lastname, '', number, '', email_add, civil_status, address, hash, beneficiary, business_work, 0], (error, results) => {
    if (error) {
      res.status(500).json({ error: error.message });
    } else {
      res.status(results[0][0].stat).json({ 
        'status': results[0][0].stat,
        'message': results[0][0].ret,
      });
    }
  })
}

function getOneMemberData (req, res) {
  const { token } = req.query
  
  db.query('CALL sp_getMemberData(?)', [ token ], (error, results) => {
    if (error) {
      res.status(500).json(error)
    } else {
      res.status(200).json(results[0])
    }
  })
}

function getCoMakerData (req, res) {
  const { co_id, m_id } = req.query
  
  db.query('CALL sp_getComakerFullname(?,?)', [ co_id, m_id ], (error, results) => {
    if (error) {
      res.status(500).json(error)
    } else {
      res.status(200).json(results[0])
    }
  })
}

function loanRequests(req, res) {
  const { id, position, amount, purpose, loanterm, modepayment, repaymentsched, yearstayed, tinno, fbacc, spousename, nodependents, dataaddress, estatus, salaryincome, otherincome, noofyears, colastname, cofirstname, comiddlename, other, descrip } = req.body

  db.query('CALL sp_loanRequest(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)', [id, position, amount, purpose, loanterm, modepayment, repaymentsched, yearstayed, tinno, fbacc, spousename, nodependents, dataaddress, estatus, salaryincome, otherincome, noofyears, colastname, cofirstname, comiddlename, other, descrip], (error, results) => {
    if (error) {
      res.status(500).json({ error: error })
    } else {
      res.json({ 
        status: results[0][0].st_code,
        msg: results[0][0].st_msg
      })
    }
  })
}

function updateLoanRequest (req, res) {
  const { id } = req.params
  const { amount, loanterm, desc } = req.body
  console.log(id)

  db.query('CALL sp_acceptRequest(?,?,?,?)', [id, amount, loanterm, desc], (err, results) => {
    if (err) {
      res.status(500).json(err.message)
    } else {
      res.json(results[0])
    }
  })
}


module.exports = {
  updateLoanRequest,
  getCoMakerData,
  loanRequests,
  getOneMemberData,
  loginmember,
  verifyMemberToken,
  registerMember,
  getMemberData,
  removeMemberData,
  updateMemberData,
};
