// request express to create a rout and response
var express = require ('express');
var app = express();
var mysql = require('mysql');
var path = require("path");

// Use EJS to Template Your Node Application
// set the view engine to ejs
app.set('view engine', 'ejs');


//you need this to be able to process information sent to a POST route
// to get req.body
// get inf from forms, post request

	var bodyParser = require('body-parser');

	// parse application/x-www-form-urlencoded
	app.use(bodyParser.urlencoded({ extended: true }));

	// parse application/json
	app.use(bodyParser.json());
// to create one rout for all files in public folder
app.use(express.static('public'));


// Initializes the connection variable to sync with a MySQL database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "flashcards_db"
});
// Create a new card on submit
// The most basic way to perform a query is to call the .query() method 
// on an object (like a Connection instance).
app.post('/submit', function(req, res){
	// res.json(req.body);
	// req.body turns into an object
   connection.query(
       "INSERT INTO question (question, subject) VALUES (?, ?)",
  [req.body.question, req.body.subject],
      function(err, response) {
        if (err) throw err;
      }
    );
     connection.query(
       "INSERT INTO answer (answer, question_id) VALUES (?, LAST_INSERT_ID())",
  [req.body.answer],
      function(err, response) {
        res.redirect('/');
      }
    );

});

// get the list of all questions in json format use res.json
//localhost:3000/questions
app.get('/questions', function(req, res){
  connection.query(
      "SELECT * FROM question",
      function(err, response) {
        res.json(response);
      }
    );
});



// get the list of all cards inreadable view use res.render 
// localhost:3000/all-cards
// do reference to all_cards.ejs
app.get('/cards-edit', function(req, res){
  connection.query(
      "SELECT question.question, answer.answer FROM question LEFT JOIN answer ON question.id=answer.question_id",
      function(err, response) {
        res.render('cards-edit', {
          cards: response
        });
      });
});
// use res.render to load up an ejs view file
// It is important to note that res.render() will look in a views folder for the view.
app.get('/cards', function(req, res){
  connection.query(
      "SELECT question.question, answer.answer FROM question LEFT JOIN answer ON question.id=answer.question_id",
      function(err, response) {
        res.render('cards', {
          cards: response
        });
      }
    );
});



// get all subjects and use GROUP BY to get the unique values for subject
app.get('/new-card', function(req, res){
  connection.query(
      "SELECT subject FROM question GROUP BY subject",
      function(err, response) {
        res.render('new-card', {
          question: response
        });
      });
});
app.get('/', function(req, res){
  connection.query(
      "SELECT subject FROM question GROUP BY subject",
      function(err, response) {
        res.render('index', {
          question: response
        });
      });
});

// select cards by subject
app.get('/cards-by-subject', function(req, res){
  connection.query(
      "SELECT question.question, answer.answer FROM question LEFT JOIN answer ON question.id=answer.question_id WHERE subject = ? ORDER BY question.id LIMIT ?, 1;",
      function(err, response) {
        res.render('cards-by-subject', {
          card: response
        });
      });
});

// app.get('/flash-cards/:subject', function(req, res){
//   connection.query(
//       "SELECT question.question, answer.answer FROM question LEFT JOIN answer ON question.id=answer.question_id WHERE subject = ?", 
//       [req.params.subject]
//       function(err, response) {
//         res.render('flash-cards/:subject', {
//           cards : response
          
//         });
//       }
//     );
// });









app.listen(3000);
console.log('3000 is your port');












