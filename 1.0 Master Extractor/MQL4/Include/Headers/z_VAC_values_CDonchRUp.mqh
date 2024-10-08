//+------------------------------------------------------------------+
//|                                       z_VAC_values_CDonchRUp.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la relación entre el cierre (Close)
 * y la banda superior del canal de Donchian.
 * Explicación de la Nomenclatura:
 * C_DonchRUp => Close to Donchian Channel Ratio using Upper Band
*/

string z_VAC_values_CDonchRUp(string _sep, int _shift, int _digits){
   double C_DonchRUp_7        = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 7, 0, _shift));
   double C_DonchRUp_14       = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 14, 0, _shift));
   double C_DonchRUp_21       = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 21, 0, _shift));
   double C_DonchRUp_28       = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, _shift));
   double C_DonchRUp_50       = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 50, 0, _shift));   
   
   return DoubleToStr(C_DonchRUp_7, _digits) + _sep + DoubleToStr(C_DonchRUp_14, _digits) + _sep + DoubleToStr(C_DonchRUp_21, _digits) + _sep + DoubleToStr(C_DonchRUp_28, _digits) + _sep + DoubleToStr(C_DonchRUp_50, _digits) + _sep;
}



