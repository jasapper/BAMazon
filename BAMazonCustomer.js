var mysql = require("mysql");
var inquirer = require("inquirer");
var chalk = require("chalk");
require("console.table");

var orderCost;

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon"
  });
  
  connection.connect(function(err){
    if (err) throw err;
    console.log(chalk.green("Connected to BAMazon! (ID: " + connection.threadId + ")"))
  });

  function listItems(){
    connection.query("SELECT * FROM products", function(err, res){
      if (err) throw err;
      console.log("=====================================================================");
      console.table(res);
      console.log("=====================================================================");
      placeOrder();
      })
  }
  
  function placeOrder(){
    inquirer.prompt([{
      name: "orderID",
      message: "Please enter the ID of the item you wish to purchase:",
      validate: function(value){
        var valid = value.match(/^[0-9]+$/)
        if(valid){
          return true
        }
          return "Please enter a valid Item ID!"
      }
    },{
      name:"orderQuantity",
      message: "How many of this item would you like to order?",
      validate: function(value){
        var valid = value.match(/^[0-9]+$/)
        if(valid){
          return true
        }
          return "Please enter a number!"
      }
    }]).then(function(answer){
    connection.query("SELECT * FROM products WHERE item_id = ?", [answer.orderID], function(err, res){
      if(answer.orderQuantity > res[0].stock_quantity){
        console.log(chalk.white.bgRedBright.bold("Insufficient quantity in stock!"));
        console.log(chalk.redBright.bold("BAMazon has only " + res[0].stock_quantity + " available to purchase so this order has been cancelled.\n"));
        newOrder();
      }
      else{
        orderCost = res[0].price * answer.orderQuantity;
        console.log(chalk.greenBright.bold("Thank you for your order!"));
        console.log("Your total is $" + orderCost + "\n");
        
        connection.query("UPDATE products SET ? Where ?", [{
          stock_quantity: res[0].stock_quantity - answer.orderQuantity
        },{
          item_id: answer.orderID
        }], function(err, res){});
        newOrder();
      }
    })
  
  }, function(err, res){})
  };
  
  function newOrder(){
    inquirer.prompt([{
      type: "confirm",
      name: "choice",
      message: "Would you like to place another order?"
    }]).then(function(answer){
      if(answer.choice){
        placeOrder();
      }
      else{
        console.log(chalk.magentaBright.bold("\nThank you for shopping at BAMazon!\nCome back soon!!\n"));
        connection.end();
      }
    })
  };
  
  
  listItems();