//+------------------------------------------------------------------+
//|                                         z_VAC_values_EnvDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la banda inferior del canal de Envelopes
*/

string z_VAC_values_EnvDown(string _sep, int _shift, int _digits){
   double EnvDown_6_2      = iEnvelopes(NULL, 0, 7, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_LOWER, _shift);
   double EnvDown_15_2     = iEnvelopes(NULL, 0, 15, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_LOWER, _shift);
   double EnvDown_20_2     = iEnvelopes(NULL, 0, 20, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_LOWER, _shift);
   double EnvDown_25_2     = iEnvelopes(NULL, 0, 25, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_LOWER, _shift);
   double EnvDown_33_2     = iEnvelopes(NULL, 0, 33, MODE_SMA, 0, PRICE_CLOSE, 2, MODE_LOWER, _shift);
   double EnvDown_14_3     = iEnvelopes(NULL, 0, 14, MODE_SMA, 0, PRICE_CLOSE, 3, MODE_LOWER, _shift);
   double EnvDown_20_3     = iEnvelopes(NULL, 0, 20, MODE_SMA, 0, PRICE_CLOSE, 3, MODE_LOWER, _shift);
   double EnvDown_50_3     = iEnvelopes(NULL, 0, 50, MODE_SMA, 0, PRICE_CLOSE, 3, MODE_LOWER, _shift);
      
   return DoubleToStr(EnvDown_6_2, _digits) + _sep + DoubleToStr(EnvDown_15_2, _digits) + _sep + DoubleToStr(EnvDown_20_2, _digits) + _sep + DoubleToStr(EnvDown_25_2, _digits) + _sep + DoubleToStr(EnvDown_33_2, _digits) + _sep + DoubleToStr(EnvDown_14_3, _digits) + _sep + DoubleToStr(EnvDown_20_3, _digits) + _sep + DoubleToStr(EnvDown_50_3, _digits) + _sep;  
}

