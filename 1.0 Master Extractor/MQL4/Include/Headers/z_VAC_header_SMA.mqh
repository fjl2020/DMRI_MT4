//+------------------------------------------------------------------+
//|                                             z_VAC_header_SMA.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador SMA
*/

string z_VAC_header_SMA(string _sep){
   return "SMA_7"+_sep +"SMA_14"+_sep +"SMA_21"+_sep +"SMA_28"+_sep +"SMA_50"+_sep +"SMA_100"+_sep +"SMA_200"+_sep;
}
