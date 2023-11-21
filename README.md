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