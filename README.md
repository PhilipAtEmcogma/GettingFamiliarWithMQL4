# This project is created to sololey to learn about creating an automated FOREX trading bot using Metadata 4 and MQL 4.
##
## MQL4 is an IDE similar to Visual Studio, which is use to develop code to run on Metadata 4
##
### Some notes for MQL4:
####    When creating a new project using the MQL4 wizard, below are the describtion for some of the avaliable options to choose from:
#####   1. Expert Advisor - use to create trading robot
#####   2. Custom indicator - use to create our own indicator
#####   3. Script - code that only run once
###
### After finish coding, need to compile and run it.  Do the following to do so:
#### 1. click the complie button to compile code
#### 2. after successfully compling the code, click on "Activate the trading terminal" button or F4 to open Metadata
#### 3. in Metadata under the nevagaitor tab, find the folder your code is save under.  e.g. if its an bot it should be under the "Expert advisor" folder, or if its an one time script it should be under the "Script" folder.
#### 4. run the code by drag and drop it.
###
## 6 Types of basic variables used in MQL4:
### 1. int - integer
### 2. double - double
### 3. string - string
### 4. bool - boolean
### 5. color - colour
### 6. datetime - date time
##
## by having an ";" in the end of a line, it turns an expression into an statement in MQL4.  Expression itself is a type of operations in MQL4.
#
## MQL4 has 6 logical operations which are:
### ==  - check if two variable are they equal
### != - check if two variable are not equal
### < - less than
### > - larger than
### <= - lesser or equal to
### >= - larger or equal to
#
## the "Bid" variable is an inbuild variable for MQL4 that represents the current bid prices of the asset pair, its always avaliable in MQL4.
#
# a "Point" is a MQL4 keyword representing 0.0001 of a dollar.  1 pip is a forex term representing 0.001 of a dollar
#
# pressing F1 after highlighting an built-in function, will open up the description of the functions
#
# IMPORTANT NOTICE!
# IN ORDER FOR ALGORITHMIC TRADING TO WORK PROPERLY IN METADATA4, THE "AutoTrading" FUNCTION NEED TO BE TURNED ON.  IF THERE'S A RED CIRCLE ON "AutoTrading" IT NEED TO BE TURN ON
#
# In MQL4 there's no need to declar a function, e.g. int MyAddition(int val1, int val2); , a function can be directly coded as is.
#
# Use OrderSend to open trade
# Below are some of the key parameters that need to be inputted for the OrderSend function:
##         symbol - the assert pair we want to trade, the example we use below is EURUSD meaning the asset pair is Euro-US Dollar, with EUR as base currency
##         cmd - command, i.e. to buy (OP_BUY) or sell (OP_SELL)
##         volume - number of lots to buy or sell
##         price - order prices to trigger
##         slippage - Max price slippage for buy or sell orders
##         stoploss - stop loss level
##         takeprofit - take profit level   
#
# Use OrderClose to close trade
##            OrderClose is use to close orders, takes in 5 variables
##            its a boolean function, so returns true when trade is successfully close, else false
##            ticket - the ticket number of the Order open
##            lots - how many lots to close the trade
##            price - price to close the trade in
##            slippage - acceptable maximum slippage in points (percentage)
##            arrow_cloor - the colour of the bar to use for representing a closed trade
#
# OrderModify
## This function modifies an order. OrderModify takes in 6 parameters
##            ticket - the order ticket # for the order we want to modify
##            price - adjust the order to this new price
##            stoploss - adjust to this new stop loss level
##            takeprofit - adjust to this new takeprofit level
##            expiration - when will this pending orders expries
#
# OrderSelect
## This function selects an order for further processing.
#
# Below are description of some of the indicators that are avaliable in MQL4 library (will add more inperoridcally):
## iMA - indicator Moving Average
#
# After coding the strategy use the "Strategy Tester" in MT4 to test it.  Something to take note of:  
##  1. click on "Expert Properties" to select which parameters to optimise on
##  2. make sure to click on optimization checkbox, if you want to optimise the selected parameters in 1.
##  3. click start to let optimisation to begin
##  4. after optimisation is completed, you can check on the "Report" tab to see how successful and satisfing is the strategy
##  5. if optimised parameters satisfied criteria, click on "Optimization Results" tab and select the best parameters setting, right click on it and choose "set input parameters" to update strategy parameters
#