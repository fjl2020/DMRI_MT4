//+------------------------------------------------------------------+
//|                                        z_VAC_header_CBBRDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos de la normalización
 * del cierre con la Banda Bollinger Inferior
*/

string z_VAC_header_CBBRDown(string _sep){
   return "C_BBR_Down_6_2"+_sep +"C_BBR_Down_15_2"+_sep +"C_BBR_Down_20_2"+_sep +"C_BBR_Down_25_2"+_sep +"C_BBR_Down_33_2"+_sep +"C_BBR_Down_14_3"+_sep +"C_BBR_Down_20_3"+_sep +"C_BBR_Down_50_3"+_sep;
}

