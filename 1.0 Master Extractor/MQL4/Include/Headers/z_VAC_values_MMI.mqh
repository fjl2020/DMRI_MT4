//+------------------------------------------------------------------+
//|                                             z_VAC_values_MMI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Market Meanness Index (MMI)
*/

string z_VAC_values_MMI(string _sep, int _shift, int _digits){
   double MMI_7             = iCustom(NULL, 0, "Custom/MMI", 7, 0, _shift);
   double MMI_14            = iCustom(NULL, 0, "Custom/MMI", 14, 0, _shift);
   double MMI_21            = iCustom(NULL, 0, "Custom/MMI", 21, 0, _shift);
   double MMI_28            = iCustom(NULL, 0, "Custom/MMI", 28, 0, _shift);
   double MMI_50            = iCustom(NULL, 0, "Custom/MMI", 50, 0, _shift);
   double MMI_100           = iCustom(NULL, 0, "Custom/MMI", 100, 0, _shift);
   return DoubleToStr(MMI_7, _digits) + _sep + DoubleToStr(MMI_14, _digits) + _sep + DoubleToStr(MMI_21, _digits) + _sep + DoubleToStr(MMI_28, _digits) + _sep + DoubleToStr(MMI_50, _digits) + _sep + DoubleToStr(MMI_100, _digits) + _sep;
}


