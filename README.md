# BAMazon

BAMamazon! is a very straightforward console/commandline application version of everyone's favorite online behemeath, written is Node.ja. It is intended to show the customer shopping experience at its most basic levels. Browse the list of items for sale, select an item and quantity to purchase, and if enough items are in stock the sale is completed and order total shown, although no money or products are actually changing hands.

### Overview
There will be two "points-of-entry": as a typical cutomer or a store manager, the latter of which will have some administrative/management options available.

As this app is run through your terminal aka console the steps needed in order to successfully run the application may be different than what you are familiar with.

1. Install Node.js if not already present and have an available mySQL server. The BAMazon.sql file can be imported into your MySQL server to set up the back-end environment.
2. Using Terminal change to the directory where the app has been placed and enter "npm install" to install the required dependencies automatically.
3. Decide which of the two "roles" you would like to work with and start the app using either "node [BAMamazonCutomer.js OR BAMamazonManager.js]".
_For example to start the customer side enter "node BAMazonCustomer.js"_

### SCREENSHOTS
Overall flow (starting BAMazonCustomer.js, ordering a few items during several "orders" after which the Stock shows the updated number remaining, trying to order more of an item than is available resulting in cancelled sale, exiting app after answering N when asked if another order is desired.)
![Overview](https://github.com/jasapper/BAMazon/raw/master/images/bamazon_flow.gif)

#### Step 1
Starting the (Customer) app which immediately lists the products available:

![Step 1](https://github.com/jasapper/BAMazon/raw/master/images/bamazon_step1.png)

#### Step 2
Entering an Item ID (7 - Hair Gel) followed by quantity desired (3), after which your total for the order is displayed along with app asking if another order is desired.

![Step 2](https://github.com/jasapper/BAMazon/raw/master/images/bamazon_step2.png)

#### Step 3
Answering "Y" to start a new order the product list is shown again where it can be seen that quantity for previous order (Hair Gel) has decreased by quantity ordered (original 997 minus 3 ordered equals 994).

![Step 3](https://github.com/jasapper/BAMazon/raw/master/images/bamazon_step3.png)

#### Step 4
Trying to order more (55) of an item (Ferarri GT) than is available (50) displays an "error" message and notifies the order was cancelled.

![Step 4](https://github.com/jasapper/BAMazon/raw/master/images/bamazon_step4.png)

#### Step 5
Answering "Y" to place new order the product list confirms the same quanity as before is available

![Step 5](https://github.com/jasapper/BAMazon/raw/master/images/bamazon_step5.png)

#### Step 6
Desiring no further items to purchase, "N" is entered when asked about another order and the app exits.

![Step 6](https://github.com/jasapper/BAMazon/raw/master/images/bamazon_step6.png)