//+------------------------------------------------------------------+
//|                                       z_VAC_values_AroonDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Arroon Down
*/

string z_VAC_values_AroonDown(string _sep, int _shift, int _digits){
   double AroonDown_7        = iCustom(NULL, 0, "Custom/Aroon", 7, 2, _shift);
   double AroonDown_14       = iCustom(NULL, 0, "Custom/Aroon", 14, 2, _shift);
   double AroonDown_21       = iCustom(NULL, 0, "Custom/Aroon", 21, 2, _shift);
   double AroonDown_28       = iCustom(NULL, 0, "Custom/Aroon", 28, 2, _shift);
   double AroonDown_50       = iCustom(NULL, 0, "Custom/Aroon", 50, 2, _shift);
   double AroonDown_100      = iCustom(NULL, 0, "Custom/Aroon", 100, 2, _shift);
   return DoubleToStr(AroonDown_7, _digits) +_sep+ DoubleToStr(AroonDown_14, _digits) +_sep+ DoubleToStr(AroonDown_21, _digits) +_sep+ DoubleToStr(AroonDown_28, _digits) +_sep+ DoubleToStr(AroonDown_50, _digits) +_sep+ DoubleToStr(AroonDown_100, _digits) +_sep;
}

