//+------------------------------------------------------------------+
//|                                             z_VAC_header_EMA.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador EMA
*/

string z_VAC_header_EMA(string _sep){
   return "EMA_7"+_sep +"EMA_14"+_sep +"EMA_21"+_sep +"EMA_28"+_sep +"EMA_50"+_sep +"EMA_100"+_sep +"EMA_200"+_sep;
}

