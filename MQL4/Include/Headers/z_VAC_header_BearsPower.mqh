//+------------------------------------------------------------------+
//|                                      z_VAC_header_BearsPower.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador BearsPower
*/

string z_VAC_header_BearsPower(string _sep){
   return "BearsPower_3"+_sep+"BearsPower_7"+_sep+"BearsPower_14"+_sep+"BearsPower_21"+_sep+"BearsPower_50"+_sep+"BearsPower_100"+_sep+"BearsPower_200"+_sep;
}

