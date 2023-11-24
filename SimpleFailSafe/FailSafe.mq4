//+------------------------------------------------------------------+
//|                                                     FailSafe.mq4 |
//|                                          Copyright 2023, Emcogma |
//|                                         https://www.emcogma.tech |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Emcogma"
#property link      "https://www.emcogma.tech"
#property version   "1.00"
#property strict
#property script_show_inputs


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
      
      TakeProfitLevel = Bid + TakeProfit*Point; // 1 point = 0.0001, therefore take profit at 10pip (10*Point). i.e. 0.001 increase from Bid price
      StopLossLevel = Bid - StopLoss*Point;
      int ticket; //OrderSend can return ticket# OR -1 (if OrderSend failed)
      
      /* Below are some of the key parameters that need to be inputted for the OrderSend function
         symbol - the assert pair we want to trade, the example we use below is EURUSD meaning the asset pair is Euro-US Dollar, with EUR as base currency
         cmd - command, i.e. to buy (OP_BUY) or sell (OP_SELL)
         volume - number of lots to buy or sell
         price - order prices to trigger
         slippage - Max price slippage for buy or sell orders
         stoploss - stop loss level
         takeprofit - take profit level
         
         Returns number of the ticket assigned to the order by the trade server or -1 if it fails.      
      */
      ticket = OrderSend("EURUSD",OP_BUY, 1.0, Ask, 10, StopLossLevel,TakeProfitLevel, "My Frist Order!");
      
      //using ticket to create a fail safe system
      if(ticket < 0)
      {
         Alert("ERROR");
      }
      else
      {
         Alert("Your Ticket # is: " + string(ticket));
      }
  }

