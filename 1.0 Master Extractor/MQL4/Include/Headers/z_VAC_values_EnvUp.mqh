//+------------------------------------------------------------------+
//|                                           z_VAC_values_EnvUp.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la banda superior del canal de Envelopes
*/

string z_VAC_values_EnvUp(string _sep, int _shift, int _digits){
   double EnvUp_6_2      = iEnvelopes(NULL, 0, 7, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_UPPER, _shift);
   double EnvUp_15_2     = iEnvelopes(NULL, 0, 15, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_UPPER, _shift);
   double EnvUp_20_2     = iEnvelopes(NULL, 0, 20, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_UPPER, _shift);
   double EnvUp_25_2     = iEnvelopes(NULL, 0, 25, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_UPPER, _shift);
   double EnvUp_33_2     = iEnvelopes(NULL, 0, 33, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_UPPER, _shift);
   double EnvUp_14_3     = iEnvelopes(NULL, 0, 14, MODE_SMA, 0, PRICE_CLOSE, 3, MODE_UPPER, _shift);
   double EnvUp_20_3     = iEnvelopes(NULL, 0, 20, MODE_SMA, 0, PRICE_CLOSE, 3, MODE_UPPER, _shift);
   double EnvUp_50_3     = iEnvelopes(NULL, 0, 50, MODE_SMA, 0, PRICE_CLOSE, 3, MODE_UPPER, _shift);
      
   return DoubleToStr(EnvUp_6_2, _digits) + _sep + DoubleToStr(EnvUp_15_2, _digits) + _sep + DoubleToStr(EnvUp_20_2, _digits) + _sep + DoubleToStr(EnvUp_25_2, _digits) + _sep + DoubleToStr(EnvUp_33_2, _digits) + _sep + DoubleToStr(EnvUp_14_3, _digits) + _sep + DoubleToStr(EnvUp_20_3, _digits) + _sep + DoubleToStr(EnvUp_50_3, _digits) + _sep;  
}

