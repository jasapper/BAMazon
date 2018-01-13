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
  