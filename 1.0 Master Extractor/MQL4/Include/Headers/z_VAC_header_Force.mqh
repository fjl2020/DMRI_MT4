//+------------------------------------------------------------------+
//|                                           z_VAC_header_Force.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador Force
*/

string z_VAC_header_Force(string _sep){
   return "Force_3"+_sep +"Force_7"+_sep +"Force_14"+_sep +"Force_21"+_sep +"Force_50"+_sep +"Force_100"+_sep +"Force_200"+_sep;
}


