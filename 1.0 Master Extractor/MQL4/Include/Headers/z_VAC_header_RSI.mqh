//+------------------------------------------------------------------+
//|                                             z_VAC_header_RSI.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador RSI
*/

string z_VAC_header_RSI(string _sep){
   return "RSI_7"+_sep +"RSI_14"+_sep +"RSI_21"+_sep +"RSI_28"+_sep +"RSI_50"+_sep +"RSI_100"+_sep +"RSI_200"+_sep;
}


