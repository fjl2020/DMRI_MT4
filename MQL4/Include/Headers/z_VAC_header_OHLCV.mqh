//+------------------------------------------------------------------+
//|                                           z_VAC_header_OHLCV.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos de mercado
*/

string z_VAC_header_OHLCV(string _sep){
   return "Open"+_sep+"High"+_sep+"Low"+_sep+"Close"+_sep+"Volume"+_sep;
}

