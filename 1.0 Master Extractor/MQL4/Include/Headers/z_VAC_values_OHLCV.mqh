//+------------------------------------------------------------------+
//|                                           z_VAC_values_OHLCV.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de mercado (OHLCV)
*/

string z_VAC_values_OHLCV(string _sep, int _shift, int _digits){
   double open_price    = iOpen(NULL, 0, _shift);
   double high_price    = iHigh(NULL, 0, _shift);
   double low_price     = iLow(NULL, 0, _shift);
   double close_price   = iClose(NULL, 0, _shift);
   long volume          = iVolume(NULL, 0, _shift);
   return DoubleToStr(open_price, _digits) +_sep+  DoubleToStr(high_price, _digits) +_sep+  DoubleToStr(low_price, _digits) +_sep+ DoubleToStr(close_price, _digits) +_sep+IntegerToString(volume, _digits)+_sep;
}

