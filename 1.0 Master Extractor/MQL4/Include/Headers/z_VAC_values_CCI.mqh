//+------------------------------------------------------------------+
//|                                             z_VAC_values_CCI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador CCI
*/

string z_VAC_values_CCI(string _sep, int _shift, int _digits){
   double CCI_7            = iCCI(NULL, 0, 7, PRICE_CLOSE, _shift);
   double CCI_14           = iCCI(NULL, 0, 14, PRICE_CLOSE, _shift);
   double CCI_21           = iCCI(NULL, 0, 21, PRICE_CLOSE, _shift);
   double CCI_28           = iCCI(NULL, 0, 28, PRICE_CLOSE, _shift);
   double CCI_50           = iCCI(NULL, 0, 50, PRICE_CLOSE, _shift);
   double CCI_100          = iCCI(NULL, 0, 100, PRICE_CLOSE, _shift);
   double CCI_200          = iCCI(NULL, 0, 200, PRICE_CLOSE, _shift);
   return DoubleToStr(CCI_7, _digits) + _sep + DoubleToStr(CCI_14, _digits) + _sep + DoubleToStr(CCI_21, _digits) + _sep + DoubleToStr(CCI_28, _digits) + _sep + DoubleToStr(CCI_50, _digits) + _sep + DoubleToStr(CCI_100, _digits) + _sep + DoubleToStr(CCI_200, _digits) + _sep;
}


