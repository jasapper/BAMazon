var mysql = require("mysql");
var inquirer = require("inquirer");
var chalk = require('chalk');
var Table = require('console.table');

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon"
  });
  
  connection.connect(function(err){
    if (err) throw err;
    console.log(chalk.green("Connected to database. ID is: " + connection.threadId))
  });
  