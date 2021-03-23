const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
const mysql = require('mysql')
const app = express()
const config = require('./config/config')
app.use(morgan('combined'))
app.use(express.json());

app.use(cors())


app.get('/test', (req, res) => {
    const connection = mysql.createConnection({
        host: config.host,
        user: config.user,
        password: config.password,
        database: config.database
    })
     // just an example of a query
    connection.query("SELECT * FROM users;", (err, rows, fields) => {
    console.log('Hello?')
    console.log(rows)
    res.json(rows)
    })
})

app.post('/add-form-submit', (req, res) => {
    const connection = mysql.createConnection({
        host: config.host,
        user: config.user,
        password: config.password,
        database: config.database
    })
    var query = `CALL create_add_form('${req.body.last_name}', '${req.body.first_name}', ${req.body.u_num}, '${req.body.email}', '${req.body.faculty_last_name}', '${req.body.faculty_first_name}', '${req.body.faculty_email}', '${req.body.signature}','${req.body.date}',${req.body.submitted},${req.body.uid});`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {})
    res.send({
        message: `Hello ${req.body.email}! Add Form was submitted`,
    })
})

app.listen(process.env.PORT || config.port)