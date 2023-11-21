//+------------------------------------------------------------------+
//|                                               UsingVariables.mq4 |
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
      
      int A = 10; //declare and assigning varaible in one line
      int B = 5;
      int C;
            
      // by having a ";" it turns an expression into an statement in MQL4
      C = A+B;
      
      double D = 10.1;
      double E = 2.5;
      double results = D/E;
      
      string greeting = "Hello!";
      string space = " ";
      string name = "Bob";
      string message = greeting+space+name;
      string message2 = "Value of A is: " + string(A); //converting A from int to string

      
      Alert(C);
      Alert(results);
      Alert(message);
      Alert(message2);
  }

