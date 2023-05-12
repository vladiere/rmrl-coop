const db = require('./dbconfig');


function getMemberSavings (req, res) {
    const { search } = req.query
    db.query('CALL sp_getMembersSavings(?)', search, (err, results) => {
        if (err) {
            res.status(500).json(err);
        } else {
            res.json(results[0]);
        }
    })
}

function withdrawSavings (req, res) {
    const { id, amount, desc } = req.body
    db.query('CALL sp_withdrawDeposit(?,?,?)', [id, amount, desc], (err, results) => {
        if (err) {
            console.error(err);
        } else {
            res.json(results[0]);
        }
    })
}

module.exports = {
    withdrawSavings,
    getMemberSavings
}