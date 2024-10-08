//+------------------------------------------------------------------+
//|                                             z_VAC_values_ADX.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador ADX
*/

string z_VAC_values_ADX(string _sep, int _shift, int _digits){
   double ADX_7            = iADX(NULL, 0, 7, PRICE_CLOSE, MODE_MAIN, _shift);
   double ADX_14           = iADX(NULL, 0, 14, PRICE_CLOSE, MODE_MAIN, _shift);
   double ADX_21           = iADX(NULL, 0, 21, PRICE_CLOSE, MODE_MAIN, _shift);
   double ADX_28           = iADX(NULL, 0, 28, PRICE_CLOSE, MODE_MAIN, _shift);
   double ADX_50           = iADX(NULL, 0, 50, PRICE_CLOSE, MODE_MAIN, _shift);
   double ADX_100          = iADX(NULL, 0, 100, PRICE_CLOSE, MODE_MAIN, _shift);
   return DoubleToStr(ADX_7, Digits) +_sep+ DoubleToStr(ADX_14, Digits) +_sep+ DoubleToStr(ADX_21, Digits)+_sep+ DoubleToStr(ADX_28, Digits) +_sep+ DoubleToStr(ADX_50, Digits) +_sep+ DoubleToStr(ADX_100, Digits)+_sep;
}

