//+------------------------------------------------------------------+
//|                                            z_VAC_values_BBUp.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador BBUp
*/

string z_VAC_values_BBUp(string _sep, int _shift, int _digits){
   double BBUp_6_2       = iBands(NULL, 0, 6, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBUp_15_2      = iBands(NULL, 0, 15, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBUp_20_2      = iBands(NULL, 0, 20, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBUp_25_2      = iBands(NULL, 0, 25, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBUp_33_2      = iBands(NULL, 0, 33, 2, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBUp_14_3      = iBands(NULL, 0, 14, 3, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBUp_20_3      = iBands(NULL, 0, 20, 3, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   double BBUp_50_3      = iBands(NULL, 0, 50, 3, 0, PRICE_CLOSE, MODE_LOWER, _shift);
   return DoubleToStr(BBUp_6_2, _digits) + _sep + DoubleToStr(BBUp_15_2, _digits) + _sep + DoubleToStr(BBUp_20_2, _digits) + _sep + DoubleToStr(BBUp_25_2, _digits) + _sep + DoubleToStr(BBUp_33_2, _digits) + _sep + DoubleToStr(BBUp_14_3, _digits) + _sep + DoubleToStr(BBUp_20_3, _digits) + _sep + DoubleToStr(BBUp_50_3, _digits) + _sep;
}


 