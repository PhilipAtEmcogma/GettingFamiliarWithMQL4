//+------------------------------------------------------------------+
//|                                             BasicAlgoTrading.mq4 |
//|                                          Copyright 2023, Emcogma |
//|                                         https://www.emcogma.tech |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Emcogma"
#property link      "https://www.emcogma.tech"
#property version   "1.00"
#property strict
#property script_show_inputs //allow the script to show input when luanch

//External variables, need to be outside any functions.  Just like a global variable
//In addition, external variables can be shown and adjust in script_show_inputs
extern int TakeProfit = 10;
extern int StopLoss = 10;

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {

      
      double TakeProfitLevel;
      double StopLossLevel;
      
      TakeProfitLevel = Bid + TakeProfit*Point; // 1 point = 0.001, therefore take profit at 10pip (10*Point). i.e. 0.01 increase from Bid price
      StopLossLevel = Bid - StopLoss*Point;
      
      Alert("Take Profit Level = ", TakeProfitLevel);
      Alert("Stop Loss Level = ", StopLossLevel);
  }

