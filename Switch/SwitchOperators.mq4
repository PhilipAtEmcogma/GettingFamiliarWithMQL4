//+------------------------------------------------------------------+
//|                                              SwitchOperators.mq4 |
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
      int today = DayOfWeek(); //There's also Day() and DayOfYear() functions
      
      switch(today)
      {
         case 1:
            Alert("Today is Monday -> BUY");
            break;
          
         case 2:
            Alert("Today is Tuesday -> SELL");
            break;
            
         default:
            Alert("Other day, do not create order");
            break;
      }
   
  }
