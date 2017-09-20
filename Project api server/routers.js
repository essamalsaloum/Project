const mysql = require('mysql');
const fs = require('fs');
const config = JSON.parse(fs.readFileSync("config-secret.json"));
// DB Setup
// Create connection
const db = mysql.createConnection({
    host: config.host,
	user: config.user,
	password: config.password,
	port: config.port,
    database: config.database
});

// Connect
db.connect((err) => {
    if(err){
        throw err;
    }
    console.log('MySql Connected...');
});

module.exports = function(app) {
    // Select posts
    app.get('/', (req, res) => {
        let sql = `SELECT tag.name  FROM tag;`;
        let query = db.query(sql, (err, results) => {
            if(err) throw err;
            console.log(results);
            res.send(results);
        });
    });
    
    // Select single post
    app.get('/Search/:nmOfTag', (req, res) => {
        let id = req.params.nmOfTag;
        //let sql = `SELECT org.name   FROM org INNER JOIN org_has_tag ON org.id = org_has_tag.org_id where org_has_tag.tag_id = ? ;`;
        let sql = `SELECT *
        FROM tag INNER JOIN ((org INNER JOIN contact ON org.id = contact.org_id) INNER JOIN org_has_tag ON org.id = org_has_tag.org_id) ON tag.id = org_has_tag.tag_id
        WHERE tag.id = ?;`;
                let query = db.query(sql,id, (err, result) => {
            if(err) throw err;
            console.log(result);
            res.send(result);
        });
    });
}