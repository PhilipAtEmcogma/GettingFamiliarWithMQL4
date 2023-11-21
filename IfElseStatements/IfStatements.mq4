//+------------------------------------------------------------------+
//|                                                 IfStatements.mq4 |
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
      double level1 = 1.37900;
      double level2 = 1.37200;
      Alert("Bid = "+string(Bid)); //string(Bid) converting Bid from double to string

      //The Bid is an inbuild variable provides the current bid price of the trading asset pairs, always avaliable in MQL4
      if(Bid < level1)
      {
         Alert("Prices is below " + string(level1 + " -> SELL");
      }
      else if(Bid < level2)
      {
         Alert("Prices is between " + level1 + " and " + level2;)
      } 
      else
      {
         Alert("Prices is above " + string(level2)+ " -> BUY");
      }
  }

