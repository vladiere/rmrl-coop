const db = require('./dbconfig');

function getLoans(req, res) {
    let { id, stats } = req.query
    id = id === "0" ? 0 : id
    
    db.query('CALL sp_fetchTransactions(?,?)', [stats, id], (error, results) => {
        if (error) {
            res.status(500).json(error)
        } else {
            res.status(200).json(results[0])
        }
    })
}

function getAllLoans(req, res) {
    let { id, search } = req.query
    id = id === "0" ? 0 : id
    
    db.query('CALL sp_getLoans(?,?)', [search, id], (error, results) => {
        if (error) {
            res.status(500).json(error)
        } else {
            res.status(200).json(results[0])
        }
    })
}

function getUnreadcount(req, res) {
    const { loanstats } = req.query

    db.query('CALL sp_getUnreadCount(?)', [loanstats], (error, results) => {
        if (error) {
            res.status(500).json(error)
        } else {
            if (loanstats === 'unread') {
                res.status(200).json({
                    data: results[0]
                })
            } else {
                res.status(200).json({count:results[0]})
            }
        }
    })
}

function updateLoans(req, res) {
    const { lastname, firstname, pay_amount, desc } = req.body
    
    db.query('CALL sp_payBalance(?,?,?,?)', [ lastname, firstname, pay_amount, desc ], (error, results) => {
        if (error) {
            res.status(500).json(error)
        } else {
            res.json({ msg: results[0][0].st_msg })
        }
    })
}

module.exports = {
    getAllLoans,
    getUnreadcount,
    updateLoans,
    getLoans,
}