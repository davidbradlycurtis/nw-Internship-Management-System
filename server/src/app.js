const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
const mysql = require('mysql')
const app = express()
app.use(morgan('combined'))
app.use(express.json());

app.use(cors())

function sendQuery (information) {
    app.get('/test', (req, res) => {
        const connection = mysql.createConnection({
            host: 'localhost',
            user: 'root',
            password: 'password',
        })
        connection.query("select * from newschema.admin", (err, rows, fields) => {
        console.log('Hello?')
        console.log(res.json.rows)
        res.json(rows)
        })
    })
}

app.get('/test', (req, res) => {
    const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: 'password',
    })
     // just an example of a query
    connection.query("select * from newschema.admin", (err, rows, fields) => {
    console.log('Hello?')
    console.log(res.json.rows)
    res.json(rows)
    })
})

app.post('/form-submit', (req, res) => {
    sendQuery
    res.send({
        message: `Hello ${req.body.email}! Add Form was submitted`,
    })

})

app.listen(process.env.PORT || 8081)