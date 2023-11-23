//+------------------------------------------------------------------+
//|                                               IntoToFunction.mq4 |
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
      int A = 10;
      int B = 5;
      
      int C = MyAddition(A,B); //calling the function
      
      Alert("C = ", C);
  }

int MyAddition(int val1, int val2)
{
   return (val1+val2);
}