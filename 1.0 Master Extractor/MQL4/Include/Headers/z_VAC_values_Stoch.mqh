//+------------------------------------------------------------------+
//|                                           z_VAC_values_Stoch.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Stoch
*/

string z_VAC_values_Stoch(string _sep, int _shift, int _digits){
   double Stoch_6_3_3      = iStochastic(NULL, 0, 6, 3, 3, MODE_SMA, 1, MODE_MAIN, _shift);
   double Stoch_12_6_6     = iStochastic(NULL, 0, 12, 6, 6, MODE_SMA, 1, MODE_MAIN, _shift);
   double Stoch_18_12_12   = iStochastic(NULL, 0, 18, 12, 12, MODE_SMA, 1, MODE_MAIN, _shift);
   double Stoch_24_18_18   = iStochastic(NULL, 0, 24, 18, 18, MODE_SMA, 1, MODE_MAIN, _shift);
   double Stoch_28_14_7    = iStochastic(NULL, 0, 28, 14, 7, MODE_SMA, 1, MODE_MAIN, _shift); 
   
   return DoubleToStr(Stoch_6_3_3, _digits) + _sep + DoubleToStr(Stoch_12_6_6, _digits) + _sep + DoubleToStr(Stoch_18_12_12, _digits) + _sep + DoubleToStr(Stoch_24_18_18, _digits) + _sep + DoubleToStr(Stoch_28_14_7, _digits) + _sep;
}


