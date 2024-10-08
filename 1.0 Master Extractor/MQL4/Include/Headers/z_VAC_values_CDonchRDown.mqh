//+------------------------------------------------------------------+
//|                                     z_VAC_values_CDonchRDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la relación entre el cierre (Close)
 * y la banda inferior del canal de Donchian.
 * Explicación de la Nomenclatura:
 * C_DonchRDown => Close to Donchian Channel Ratio using Lower Band
*/

string z_VAC_values_CDonchRDown(string _sep, int _shift, int _digits){
   double C_DonchRDown_7        = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 7, 1, _shift));
   double C_DonchRDown_14       = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 14, 1, _shift));
   double C_DonchRDown_21       = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 21, 1, _shift));
   double C_DonchRDown_28       = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 28, 1, _shift));
   double C_DonchRDown_50       = SafeDivide(Close[_shift], iCustom(NULL, 0, "Custom/DonchianChannel", 50, 1, _shift));   
   
   return DoubleToStr(C_DonchRDown_7, _digits) + _sep + DoubleToStr(C_DonchRDown_14, _digits) + _sep + DoubleToStr(C_DonchRDown_21, _digits) + _sep + DoubleToStr(C_DonchRDown_28, _digits) + _sep + DoubleToStr(C_DonchRDown_50, _digits) + _sep;
}



