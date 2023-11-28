//+------------------------------------------------------------------+
//|                                                 SimpleSystem.mq4 |
//|                                          Copyright 2023, Emcogma |
//|                                         https://www.emcogma.tech |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Emcogma"
#property link      "https://www.emcogma.tech"
#property version   "1.00"
#property strict

extern int StartHour = 9; //9am start
extern int TakeProfit = 40; //take profits at 40 pip
extern int StopLoss = 40; // stop loss at 40 pip
extern double Lots = 1; //How many lots of trading pair to buy/sell
extern int MA_Period = 10; //10 MA period


//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
      
      static bool IsFirstTick = true; //static allows this variable not to reset everytime this cycle reset
      static int ticket = 0;
      
      //iMA = indicator Moving Average
      // symbol - the trading pair symbol, can be hardcoded (e.g. GPDUSD) 
      //            or extract the symbol of the chart that the EA is attached to by calling Symbol())
      // timeframe - period of the chart that the EA is working on and between which timeframe iMA to work on
      // period - how many period to be use to calculate the MA.  e.g. use 100 period to calculate the MA
      double ma = iMA(Symbol(),Period(), MA_Period,0,0,0,1);
      
      //Hour() returns the hour of the last known server time, 
      //    by the moment of the program start server time is determine by which broker you're using 
      //    if want to use a different server time, need to change broker
      if(Hour() == StartHour) //if current hour is 9am start algor trading
      {
         if(IsFirstTick == true)
         {
            IsFirstTick = false;
            
            /* this section is to make sure we only have 1 trade open at a time */
            bool res;
            res = OrderSelect(ticket, SELECT_BY_TICKET);
            if(res == true) //use res to check is there an active trade
            {
               if(OrderCloseTime() == 0) //check if order is closed, if trade is NOT close it OrderCloseTime will return 0
               {
                  bool res2;
                  res2 = OrderClose(ticket, Lots, OrderClosePrice(),10);
                  
                  if(res2 == false)
                  {
                     Alert("Error Closing Order #", ticket);
                  }
               }
            }
            //end of making sure there's only 1 trade at a time section
            
            
            //[0] is the latest or the candle I want to start analysing, [1] is the previous 1 candle, [2] is 2 timestamp candle 
            //if(Open[],Close[], High[], Low[])
            //NOTE: Buy and Sell both use OrderSend function, but parameters are opposite to each otherS
            if(Open[0] < Open[StartHour]) //Is the opening price at the current candle is smaller than the opening price at the StartHour?
            {
               //check MA before placing order
               if(Close[1] < ma) //if close price of the previous candle is smaller then the price of ma open buy order
               {
                  ticket = OrderSend(Symbol(),OP_BUY,Lots,Ask,10,Bid-StopLoss*Point,Bid+TakeProfit*Point,"Order set by SimpleSystem");
                  if(ticket < 0)
                  {
                     Alert("Error Sending Order!");
                  }
               }
            }
            else
            {
               //check MA before placing order
               if(Close[1] > ma) //if close price of the previous candle is larger then the price of ma open sell order
               {
                  ticket = OrderSend(Symbol(),OP_SELL,Lots,Bid,10,Ask+StopLoss*Point,Ask-TakeProfit*Point,"Order set by SimpleSystem");
                  if(ticket < 0)
                  {
                     Alert("Error Sending Order!");
                  }
               }
            }
            
         }
      }
      else
      {
         IsFirstTick = true;
      }
   
  }
//+------------------------------------------------------------------+
