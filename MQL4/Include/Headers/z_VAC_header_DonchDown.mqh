//+------------------------------------------------------------------+
//|                                       z_VAC_header_DonchDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos de la banda inferior
 * del indicador Donchian
 */

string z_VAC_header_DonchDown(string _sep){
   return "DonchDown_7"+_sep +"DonchDown_14"+_sep +"DonchDown_21"+_sep +"DonchDown_28"+_sep +"DonchDown_50"+_sep;
}

