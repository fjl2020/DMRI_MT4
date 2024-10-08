//+------------------------------------------------------------------+
//|                                         z_VAC_values_AroonUp.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Arroon Up_
*/

string z_VAC_values_AroonUp(string _sep, int _shift, int _digits){
   double AroonUp_7         = iCustom(NULL, 0, "Custom/Aroon", 7, 1, _shift);
   double AroonUp_14        = iCustom(NULL, 0, "Custom/Aroon", 14, 1, _shift);
   double AroonUp_21        = iCustom(NULL, 0, "Custom/Aroon", 21, 1, _shift);
   double AroonUp_28        = iCustom(NULL, 0, "Custom/Aroon", 28, 1, _shift);
   double AroonUp_50        = iCustom(NULL, 0, "Custom/Aroon", 50, 1, _shift);
   double AroonUp_100       = iCustom(NULL, 0, "Custom/Aroon", 100, 1, _shift);
   return DoubleToStr(AroonUp_7, _digits) +_sep+ DoubleToStr(AroonUp_14, _digits) +_sep+ DoubleToStr(AroonUp_21, _digits) +_sep+ DoubleToStr(AroonUp_28, _digits) +_sep+ DoubleToStr(AroonUp_50, _digits) +_sep+ DoubleToStr(AroonUp_100, _digits) +_sep;
}
