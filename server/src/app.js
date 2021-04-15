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
    var query = `CALL create_add_form('${req.body.last_name}', '${req.body.first_name}', ${req.body.u_num}, '${req.body.email}', '${req.body.faculty_last_name}', '${req.body.faculty_first_name}', '${req.body.faculty_email}', '${req.body.date}',${req.body.uid}, ${req.body.submitted});`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Hello ${req.body.first_name}! Add Form was created`,
    })
})

/**
* Updates an existing course add form in the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/add-form-edit', (req, res) => {
    const connection = get_connection()
    var query = `CALL edit_add_form('${req.body.form_id}','${req.body.last_name}', '${req.body.first_name}', ${req.body.u_num}, '${req.body.email}', '${req.body.faculty_last_name}', '${req.body.faculty_first_name}', '${req.body.faculty_email}', '${req.body.date}',${req.body.uid}, ${req.body.submitted});`
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
app.get('/add-form-get-forms', (req, res) => {
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
    var query = `CALL create_agreement_form('${req.body.first_name}', '${req.body.last_name}', '${req.body.student_address}', '${req.body.student_id}', '${req.body.student_phone_number}','${req.body.business_name}', '${req.body.business_address}', '${req.body.supervisor_name}', '${req.body.supervisor_email}', '${req.body.business_arrangements}', '${req.body.supervisor_phone_number}', '${req.body.other_student_agreements}', '${req.body.other_supervisor_agreements}', '${req.body.other_university_agreements}','${req.body.date}', ${req.body.uid}, ${req.body.submitted}, '${req.body.start_date}', '${req.body.end_date}');`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Hello ${req.body.first_name}! Agreement Form was created`,
    })
})

/**
* Updates an existing agreement form in the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/agreement-form-edit', (req, res) => {
    const connection = get_connection()
    var query = `CALL edit_add_form('${req.body.agreement_id}','${req.body.first_name}', '${req.body.last_name}', '${req.body.student_address}', '${req.body.student_id}', '${req.body.student_phone_number}','${req.body.business_name}', '${req.body.business_address}', '${req.body.supervisor_name}', '${req.body.supervisor_email}', '${req.body.business_arrangements}', '${req.body.supervisor_phone_number}', '${req.body.other_student_agreements}', '${req.body.other_supervisor_agreements}', '${req.body.other_university_agreements}','${req.body.date}', ${req.body.uid}, ${req.body.submitted}, '${req.body.start_date}', '${req.body.end_date}');`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Hello ${req.body.first_name}! Agreement Form was editted`,
    })
})

/**
* Updates an existing agreement form status in the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/agreement-form-change-status', (req, res) => {
    const connection = get_connection()
    var query = `CALL change_agreement_form_status('${req.body.agreement_id}', '${req.body.date}', '${req.body.approved_by}', '${req.body.status}');`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Agreement Form editted successfully`,
    })
})

/**
* Retrieves all existing agreement forms in the database for the provided student_id
* @param    {req}            (json containing student_id)
* @return   {String}         message
*/
app.post('/agreement-form-get-forms', (req, res) => {
    const connection = get_connection()
    var query = `CALL get_student_agreement_forms_by_id('${req.body.student_id}');`
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
 * Internship Form Database Calls
 * 
 */


/**
* Inserts a new agreement form into the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/internship-form-create', (req, res) => {
    const connection = get_connection()
    var query = `CALL create_internship_form('${req.body.orgName}', '${req.body.duration}', '${req.body.start_date}', '${req.body.end_date}', '${req.body.street_1}', '${req.body.street_2}', '${req.body.city}', '${req.body.zip}', '${req.body.department}', '${req.body.state}', '${req.body.supervisor_name}', '${req.body.supervisor_email}', '${req.body.site_phone}', '${req.body.int_phone}', '${req.body.notes}', '${req.body.offer}', '${req.body.app_date}', ${req.body.id}, ${req.body.submitted}, '${req.body.student_line_1}', '${req.body.student_line_2}', '${req.body.student_city}', '${req.body.student_zip}', '${req.body.student_state}');`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Internship Form was created`,
    })
})

/**
* Retrieves all existing internship forms in the database for the provided student_id
* @param    {req}            (json containing student_id)
* @return   {String}         message
*/
app.get('/agreement-form-get-forms', (req, res) => {
    const connection = get_connection()
    var query = `CALL get_internship_forms_by_id('${req.body.student_id}');`
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
* Updates an existing internship form status in the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/internship-form-change-status', (req, res) => {
    const connection = get_connection()
    var query = `CALL change_internship_form_status('${req.body.internship_id}', '${req.body.date}', '${req.body.approved_by}', '${req.body.status}');`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Internship Form editted successfully`,
    })
})

/**
* Updates an existing internship form in the database
* @param    {req}            (json containing form data)
* @return   {String}         message
*/
app.post('/internship-form-edit', (req, res) => {
    const connection = get_connection()
    var query = `CALL edit_internship_form('${req.body.internship_id}','${req.body.employer_name}', '${req.body.duration}', '${req.body.start_date}', '${req.body.end_date}', '${req.body.street_1}', '${req.body.street_2}', '${req.body.city}', '${req.body.zip}', '${req.body.department}', '${req.body.state}', '${req.body.supervisor_name}', '${req.body.supervisor_email}', '${req.body.site_phone}', '${req.body.int_phone}', '${req.body.notes}', '${req.body.offer}', '${req.body.app_date}', ${req.body.id}, ${req.body.submitted}, '${req.body.student_line_1}', '${req.body.student_line_2}', '${req.body.student_city}', '${req.body.student_zip}', '${req.body.student_state}');`
    console.log("Database call: ",query)
    connection.query(query, (err, rows, fields) => {
        if (err) {
            return console.error(err.message);
        }
        console.log(rows);
    })
    res.send({
        message: `Internship Form was editted`,
    })
})

app.listen(process.env.PORT || config.port)