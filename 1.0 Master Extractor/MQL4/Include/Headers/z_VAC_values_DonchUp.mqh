//+------------------------------------------------------------------+
//|                                         z_VAC_values_DonchUp.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de la banda superior del canal de DonchUpian
*/

string z_VAC_values_DonchUp(string _sep, int _shift, int _digits){
   double DonchUp_7          = iCustom(NULL, 0, "Custom/DonchianChannel", 7, 0, _shift);
   double DonchUp_14         = iCustom(NULL, 0, "Custom/DonchianChannel", 14, 0, _shift);
   double DonchUp_21         = iCustom(NULL, 0, "Custom/DonchianChannel", 21, 0, _shift);
   double DonchUp_28         = iCustom(NULL, 0, "Custom/DonchianChannel", 28, 0, _shift);
   double DonchUp_50         = iCustom(NULL, 0, "Custom/DonchianChannel", 50, 0, _shift);

   return DoubleToStr(DonchUp_7, _digits) + _sep + DoubleToStr(DonchUp_14, _digits) + _sep + DoubleToStr(DonchUp_21, _digits) + _sep + DoubleToStr(DonchUp_28, _digits) + _sep + DoubleToStr(DonchUp_50, _digits) + _sep;
}

