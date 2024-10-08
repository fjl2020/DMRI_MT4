//+------------------------------------------------------------------+
//|                                            z_VAC_values_OsMA.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador OsMA
*/

string z_VAC_values_OsMA(string _sep, int _shift, int _digits){
   double OsMA_12_26_9     = iOsMA(NULL, 0, 12, 26, 9, PRICE_CLOSE, _shift);
   double OsMA_24_52_18    = iOsMA(NULL, 0, 24, 52, 18, PRICE_CLOSE, _shift);
   double OsMA_12_26_6     = iOsMA(NULL, 0, 12, 26, 6, PRICE_CLOSE, _shift);
   double OsMA_12_26_3     = iOsMA(NULL, 0, 12, 26, 3, PRICE_CLOSE, _shift);
   
   return DoubleToStr(OsMA_12_26_9, _digits) + _sep + DoubleToStr(OsMA_24_52_18, _digits) + _sep + DoubleToStr(OsMA_12_26_6, _digits) + _sep + DoubleToStr(OsMA_12_26_3, _digits) + _sep;
}


