//+------------------------------------------------------------------+
//|                                      z_VAC_values_BearsPower.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador BearsPower
*/

string z_VAC_values_BearsPower(string _sep, int _shift, int _digits){
   double BearsPower_3     = iBearsPower(NULL, 0, 3, PRICE_CLOSE, _shift);
   double BearsPower_7     = iBearsPower(NULL, 0, 7, PRICE_CLOSE, _shift);
   double BearsPower_14    = iBearsPower(NULL, 0, 14, PRICE_CLOSE, _shift);
   double BearsPower_21    = iBearsPower(NULL, 0, 21, PRICE_CLOSE, _shift);
   double BearsPower_50    = iBearsPower(NULL, 0, 50, PRICE_CLOSE, _shift);
   double BearsPower_100   = iBearsPower(NULL, 0, 100, PRICE_CLOSE, _shift);
   double BearsPower_200   = iBearsPower(NULL, 0, 200, PRICE_CLOSE, _shift);
   
   return DoubleToStr(BearsPower_3, _digits) + _sep + DoubleToStr(BearsPower_7, _digits) + _sep + DoubleToStr(BearsPower_14, _digits)+ _sep + DoubleToStr(BearsPower_21, _digits) + _sep + DoubleToStr(BearsPower_50, _digits)+ _sep + DoubleToStr(BearsPower_100, _digits) + _sep + DoubleToStr(BearsPower_200, _digits) + _sep;
}


