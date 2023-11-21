//+------------------------------------------------------------------+
//|                                               WhileLoop.mq4        |
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
      Alert("Start of Script");
      int counter = 1;
      
      while(counter <3) //is while condition true?
      {
         Alert("true");
         counter = counter+1;
      }
      
      Alert("Loop had finished";
      
  }

