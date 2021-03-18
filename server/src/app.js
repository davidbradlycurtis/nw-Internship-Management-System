const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
const mysql = require('mysql')
const app = express()
app.use(morgan('combined'))
app.use(express.json());

app.use(cors())





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

app.post('/student-internship-add-form', (req, res) => {
    res.send({
        
    })

})



app.listen(process.env.PORT || 8081)