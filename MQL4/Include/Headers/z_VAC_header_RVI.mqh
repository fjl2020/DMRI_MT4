//+------------------------------------------------------------------+
//|                                             z_VAC_header_RVI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador RVI
*/

string z_VAC_header_RVI(string _sep){
   return "RVI_7"+_sep +"RVI_14"+_sep +"RVI_21"+_sep +"RVI_28"+_sep +"RVI_50"+_sep +"RVI_100"+_sep +"RVI_200"+_sep;
}


