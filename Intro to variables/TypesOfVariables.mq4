//+------------------------------------------------------------------+
//|                                                   TypesOfVariables.mq4 |
//|                                          Copyright 2023, Emcogma |
//|                                         https://www.emcogma.tech |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Emcogma"
#property link      "https://www.emcogma.tech"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
      //6 different types of basic variables MQL4 uses
      int myInt; //declaring a integer variable
      double myDouble; //declaring a double variable
      string myString; //declaring a string variable
      bool myBool; //declaring a boolean variable
      //color myColor;
      //datetime myDateTime; 
      
      myInt = 5; //assigning value to variable
      myDouble = 10.1;
      myString = "Hello World";
      myBool = True;
      
      
          
      //Alert is use to output message similar to System.output
      //Alert("Hello World!");
      Aler(myInt);
      Aler(myBool);
      Aler(myString);
   
  }

