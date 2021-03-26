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


/**
* Establishes a connection to the database
* @param    None
* @return   {Connection}         mysql connection
*/
function get_connection () {
    return mysql.createConnection({
        host: config.host,
        user: config.user,
        password: config.password,
        database: config.database
    })
}

// Test database call
app.get('/test', (req, res) => {
    const connection = get_connection()
    connection.query("SELECT * FROM users;", (err, rows, fields) => {
    console.log(rows)
    res.json(rows)
    })
})


/**
 * 
 * Course Add Form Database Calls
 * 
 */


/**
* Inserts a new course add form into the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/add-form-create', (req, res) => {
    const connection = get_connection()
    var query = `CALL create_add_form('${req.body.last_name}', '${req.body.first_name}', ${req.body.u_num}, '${req.body.email}', '${req.body.faculty_last_name}', '${req.body.faculty_first_name}', '${req.body.faculty_email}', '${req.body.signature}','${req.body.date}',${req.body.submitted},${req.body.uid});`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Hello ${req.body.email}! Add Form was created`,
    })
})

/**
* Updates an existing course add form in the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/add-form-edit', (req, res) => {
    const connection = get_connection()
    var query = `CALL edit_add_form('${req.body.form_id}','${req.body.last_name}', '${req.body.first_name}', ${req.body.u_num}, '${req.body.email}', '${req.body.faculty_last_name}', '${req.body.faculty_first_name}', '${req.body.faculty_email}', '${req.body.signature}','${req.body.date}',${req.body.submitted},${req.body.uid});`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Hello ${req.body.email}! Add Form was editted`,
    })
})

/**
* Updates an existing course add form status in the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/add-form-change-status', (req, res) => {
    const connection = get_connection()
    var query = `CALL change_add_form_status('${req.body.form_id}', '${req.body.date}', '${req.body.approved_by}', '${req.body.status}');`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Add Form editted successfully`,
    })
})

/**
* Retrieves all existing course add forms in the database for the provided student_id
* @param    {req}            (json containing student_id)
* @return   {String}         message
*/
app.post('/add-form-get-forms', (req, res) => {
    const connection = get_connection()
    var query = `CALL get_add_forms_by_id('${req.body.student_id}');`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
        res.send(rows)
    })
})


/**
 * 
 * Agreement Form Database Calls
 * 
 */


/**
* Inserts a new agreement form into the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/agreement-form-create', (req, res) => {
    const connection = get_connection()
    var query = `CALL create_agreement_form('${req.body.student_name}', '${req.body.student_address}', '${req.body.s_num}', '${req.body.student_phone}', '${req.body.org_name}', '${req.body.org_address}', '${req.body.sup_name}', '${req.body.sup_email}', '${req.body.arrangements}', '${req.body.org_phone}', '${req.body.student_other}', '${req.body.sponsor_other}', '${req.body.sup_other}', '${req.body.signature}', '${req.body.date}', ${req.body.student_id}, '${req.body.submitted}');`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Hello ${req.body.email}! Agreement Form was created`,
    })
})

app.listen(process.env.PORT || config.port)