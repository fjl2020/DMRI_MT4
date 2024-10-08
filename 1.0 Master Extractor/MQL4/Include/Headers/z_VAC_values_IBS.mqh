//+------------------------------------------------------------------+
//|                                             z_VAC_values_IBS.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Internatl Bar Strength (IBS)
*/

string z_VAC_values_IBS(string _sep, int _shift, int _digits){
      double IBS_shift0             = ibs(_shift);
      double IBS_shift2            = ibs(_shift+2);
      double IBS_shift3            = ibs(_shift+3);
      double IBS_shift5            = ibs(_shift+5);
      double IBS_shift7            = ibs(_shift+7);
      double IBS_shift9            = ibs(_shift+9);
      double IBS_shift11           = ibs(_shift+11);
      double IBS_shift13           = ibs(_shift+13);
      double IBS_shift15           = ibs(_shift+15);
      double IBS_shift17           = ibs(_shift+17);
      
   return DoubleToStr(IBS_shift0, _digits) + _sep + DoubleToStr(IBS_shift2, _digits) + _sep + DoubleToStr(IBS_shift3, _digits) + _sep + DoubleToStr(IBS_shift5, _digits) + _sep + DoubleToStr(IBS_shift7, _digits) + _sep + DoubleToStr(IBS_shift9, _digits) + _sep + DoubleToStr(IBS_shift11, _digits) + _sep + DoubleToStr(IBS_shift13, _digits) + _sep + DoubleToStr(IBS_shift15, _digits) + _sep + DoubleToStr(IBS_shift17, _digits) + _sep;
}

