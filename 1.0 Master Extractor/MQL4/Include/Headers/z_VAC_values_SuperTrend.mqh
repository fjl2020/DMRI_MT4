//+------------------------------------------------------------------+
//|                                      z_VAC_values_SuperTrend.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador SuperTrend
*/

string z_VAC_values_SuperTrend(string _sep, int _shift, int _digits){
   double SuperTrend_10_2  = iCustom(NULL, 0, "Custom/SuperTrend", 10, 2.0, 2, _shift); 
   double SuperTrend_10_3  = iCustom(NULL, 0, "Custom/SuperTrend", 10, 3.0, 2, _shift);
   double SuperTrend_17_2  = iCustom(NULL, 0, "Custom/SuperTrend", 17, 2.0, 2, _shift);
   double SuperTrend_17_3  = iCustom(NULL, 0, "Custom/SuperTrend", 17, 3.0, 2, _shift);
   double SuperTrend_21_2  = iCustom(NULL, 0, "Custom/SuperTrend", 21, 2.0, 2, _shift);
   double SuperTrend_21_3  = iCustom(NULL, 0, "Custom/SuperTrend", 21, 3.0, 2, _shift);
   double SuperTrend_28_2  = iCustom(NULL, 0, "Custom/SuperTrend", 28, 2.0, 2, _shift);
   double SuperTrend_28_3  = iCustom(NULL, 0, "Custom/SuperTrend", 28, 3.0, 2, _shift);
   
   return DoubleToStr(SuperTrend_10_2, _digits) + _sep + DoubleToStr(SuperTrend_10_3, _digits) + _sep + DoubleToStr(SuperTrend_17_2, _digits) + _sep + DoubleToStr(SuperTrend_17_3, _digits) + _sep + DoubleToStr(SuperTrend_21_2, _digits) + _sep + DoubleToStr(SuperTrend_21_3, _digits) + _sep + DoubleToStr(SuperTrend_28_2, _digits) + _sep + DoubleToStr(SuperTrend_28_3, _digits)  + _sep;
}


