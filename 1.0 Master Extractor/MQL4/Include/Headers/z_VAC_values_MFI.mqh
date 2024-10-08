//+------------------------------------------------------------------+
//|                                             z_VAC_values_MFI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos del indicador Money Flow Index (MFI)
*/

string z_VAC_values_MFI(string _sep, int _shift, int _digits){
   double MFI_7            = iMFI(NULL, 0, 7, _shift);
   double MFI_14           = iMFI(NULL, 0, 14, _shift);
   double MFI_21           = iMFI(NULL, 0, 21, _shift);
   double MFI_28           = iMFI(NULL, 0, 28, _shift);
   double MFI_50           = iMFI(NULL, 0, 50, _shift);
   double MFI_100          = iMFI(NULL, 0, 100, _shift);
   double MFI_200          = iMFI(NULL, 0, 200, _shift);
   
   return DoubleToStr(MFI_7, _digits) + _sep + DoubleToStr(MFI_14, _digits) + _sep + DoubleToStr(MFI_21, _digits) + _sep + DoubleToStr(MFI_28, _digits) + _sep + DoubleToStr(MFI_50, _digits) + _sep + DoubleToStr(MFI_100, _digits) + _sep + DoubleToStr(MFI_200, _digits) + _sep;
}

