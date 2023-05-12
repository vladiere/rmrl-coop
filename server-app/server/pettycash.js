const db = require('./dbconfig');

function getPettyCash(req, res) {
    let { id, search } = req.query
    id = id === "0" ? 0 : id
    // console.log(id,search)
    db.query('CALL sp_getPettyCash(?,?)', [id, search], (err, results) => {
        if (err) {
            res.status(500).json(err)
        } else {
            res.json(results[0])
        }
    })
}


module.exports = {
    getPettyCash
}