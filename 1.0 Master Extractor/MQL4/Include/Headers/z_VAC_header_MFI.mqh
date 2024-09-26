//+------------------------------------------------------------------+
//|                                             z_VAC_header_MFI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador MFI
*/

string z_VAC_header_MFI(string _sep){
   return "MFI_7"+_sep +"MFI_14"+_sep +"MFI_21"+_sep +"MFI_28"+_sep +"MFI_50"+_sep +"MFI_100"+_sep +"MFI_200"+_sep;
}


