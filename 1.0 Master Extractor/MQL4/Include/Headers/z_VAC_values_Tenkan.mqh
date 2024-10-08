//+------------------------------------------------------------------+
//|                                          z_VAC_values_Tenkan.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la línea Tenkan del indicador
 * Ichimoku
*/

string z_VAC_values_Tenkan(string _sep, int _shift, int _digits){
   double Tenkan_9_26_52   = iIchimoku(NULL, 0, 9, 26, 52, MODE_TENKANSEN, _shift);
   double Tenkan_13_26_52  = iIchimoku(NULL, 0, 13, 26, 52, MODE_TENKANSEN, _shift);
   double Tenkan_21_26_52  = iIchimoku(NULL, 0, 21, 26, 52, MODE_TENKANSEN, _shift);
   double Tenkan_28_26_52  = iIchimoku(NULL, 0, 28, 26, 52, MODE_TENKANSEN, _shift);
   
   return DoubleToStr(Tenkan_9_26_52, _digits) + _sep + DoubleToStr(Tenkan_13_26_52, _digits) + _sep + DoubleToStr(Tenkan_21_26_52, _digits) + _sep + DoubleToStr(Tenkan_28_26_52, _digits) + _sep;
}



