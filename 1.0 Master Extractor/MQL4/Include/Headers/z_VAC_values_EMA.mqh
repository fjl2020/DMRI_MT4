//+------------------------------------------------------------------+
//|                                             z_VAC_values_EMA.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador EMA
*/

string z_VAC_values_EMA(string _sep, int _shift, int _digits){
   double EMA_7            = iMA(NULL, 0, 7, 0, MODE_EMA, PRICE_CLOSE, _shift);
   double EMA_14           = iMA(NULL, 0, 14, 0, MODE_EMA, PRICE_CLOSE, _shift);
   double EMA_21           = iMA(NULL, 0, 21, 0, MODE_EMA, PRICE_CLOSE, _shift);
   double EMA_28           = iMA(NULL, 0, 28, 0, MODE_EMA, PRICE_CLOSE, _shift);
   double EMA_50           = iMA(NULL, 0, 50, 0, MODE_EMA, PRICE_CLOSE, _shift);
   double EMA_100          = iMA(NULL, 0, 100, 0, MODE_EMA, PRICE_CLOSE, _shift);
   double EMA_200          = iMA(NULL, 0, 200, 0, MODE_EMA, PRICE_CLOSE, _shift);
      
   return DoubleToStr(EMA_7, _digits) + _sep + DoubleToStr(EMA_14, _digits) + _sep + DoubleToStr(EMA_21, _digits) + _sep + DoubleToStr(EMA_28, _digits) + _sep + DoubleToStr(EMA_50, _digits) + _sep + DoubleToStr(EMA_100, _digits) + _sep + DoubleToStr(EMA_200, _digits) + _sep;
}

