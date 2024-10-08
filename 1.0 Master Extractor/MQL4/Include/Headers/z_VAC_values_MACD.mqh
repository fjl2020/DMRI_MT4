//+------------------------------------------------------------------+
//|                                            z_VAC_values_MACD.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador MACD (histograma)
*/

string z_VAC_values_MACD(string _sep, int _shift, int _digits){
   double MACD_12_26_9     = iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, _shift);
   double MACD_18_22_14    = iMACD(NULL, 0, 18, 22, 14, PRICE_CLOSE, MODE_MAIN, _shift);
   double MACD_24_32_9     = iMACD(NULL, 0, 24, 32, 9, PRICE_CLOSE, MODE_MAIN, _shift);
   double MACD_24_32_18    = iMACD(NULL, 0, 24, 32, 18, PRICE_CLOSE, MODE_MAIN, _shift);
   double MACD_12_16_18    = iMACD(NULL, 0, 12, 16, 18, PRICE_CLOSE, MODE_MAIN, _shift);
   
   return DoubleToStr(MACD_12_26_9, _digits) + _sep + DoubleToStr(MACD_18_22_14, _digits) + _sep + DoubleToStr(MACD_24_32_9, _digits) + _sep + DoubleToStr(MACD_24_32_18, _digits) + _sep + DoubleToStr(MACD_12_16_18, _digits) + _sep;
}

