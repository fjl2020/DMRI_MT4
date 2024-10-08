//+------------------------------------------------------------------+
//|                                        z_VAC_header_DateTime.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para la fecha y hora
*/
string z_VAC_header_DateTime(string _sep, bool _split_DateTime = false){
   if(_split_DateTime) return "Date"+_sep+"Time"+_sep;
   else return "DateTime"+_sep;
}

