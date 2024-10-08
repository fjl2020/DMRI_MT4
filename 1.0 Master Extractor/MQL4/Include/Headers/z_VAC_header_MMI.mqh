//+------------------------------------------------------------------+
//|                                             z_VAC_header_MMI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador Market
 * Meanness Index (MMI)
*/

string z_VAC_header_MMI(string _sep){
   return "MMI_7"+_sep +"MMI_14"+_sep +"MMI_21"+_sep +"MMI_28"+_sep +"MMI_50"+_sep +"MMI_100"+_sep;
}


