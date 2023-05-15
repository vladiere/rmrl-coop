const jwt = require('jsonwebtoken');
const nodemailer = require('nodemailer');
const bcrypt = require('bcrypt');
const db = require('./dbconfig');

const user = process.env.EMAIL_USER
const pass = process.env.EMAIL_PASS
const server = process.env.EMAIL_SERVER

function sendEmail (req, res) {
    const { email } = req.body;
    
    // check if email exists in database
    db.query('CALL sp_resetPassword(?,?,?)', [email,'',''], (err, results) => {
        if (err) {
            res.status(500).json({ message: 'Error retrieving user from database', err });
        } else if (results.length === 0) {
            res.json(results[0]);
        } else {
        
            const token = jwt.sign({ email }, process.env.JWT_SECRET_KEY, { expiresIn: '10m' });
            
            
            db.query('CALL sp_resetPassword(?,?,?)', [email, '', token], (err, results) => {
                if (err) {
                    res.status(500).json(err);
                } else {

                    const transporter = nodemailer.createTransport({
                        service: server,
                        auth: {
                            user: user,
                            pass: pass
                        }
                    });
            
                
                    const mailOptions = {
                        from: process.env.EMAIL_USER,
                        to: email,
                        subject: 'Password Reset',
                        html: `
                            <div style="display:flex; align-items: center; flex-direction:column; gap:10px; margin-top:2rem;">
                                <h3>RMRL Coop request reset password.</h3>
                                <p>Click to proceed to reset your password.</p>
                                <a href="http://localhost:9000/reset-password?auth=${token}" target="_blank">
                                    <button style="padding:10px 20px; border:0; outline:none; border-radius:5px; background:#3d7ab8; color:#cedad8;">Click Here</button>
                                </a>
                            </div>
                        `
                    };
            
                    // send email
                    transporter.sendMail(mailOptions, (err, info) => {
                        if (err) {
                            res.status(500).json({ message: 'Error sending email', error: err });
                        } else {
                            res.json({ message: 'Email sent successfully' });
                        }
                    });
                }
                
            })

        }
    });     
}

function resetPassword(req, res) {
    const { token, newPass, id } = req.body
    
    const salt = bcrypt.genSaltSync(10);
    const hash = bcrypt.hashSync(newPass, salt);
    console.log(token, newPass, id)
    if (token === "") {
        db.query('CALL sp_resetPassword(?,?,?,?)', ["", hash, "", id], (err, results) => { 
            if (err) {
                res.status(500).json(err)
            } else {
                res.json({ message: results[0]})
            }
        })
    } else {
        jwt.verify(token, process.env.JWT_SECRET_KEY, (err, decoded) => {
            if (err) {
                res.json({ message: 'Invalid token'})
            } else {
                const { email } = decoded
    
                db.query('CALL sp_resetPassword(?,?,?,?)', [email, hash, token, id], (err, results) => { 
                    if (err) {
                        res.status(500).json(err)
                    } else {
                        res.json({ message: results[0]})
                    }
                })
            }
        })
    }
}


module.exports = {
    sendEmail,
    resetPassword
}