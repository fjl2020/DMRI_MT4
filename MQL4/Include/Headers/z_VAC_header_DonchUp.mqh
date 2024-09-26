//+------------------------------------------------------------------+
//|                                         z_VAC_header_DonchUp.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos de la banda superior
 * del indicador Donchian
 */

string z_VAC_header_DonchUp(string _sep){
   return "DonchUp_7"+_sep +"DonchUp_14"+_sep +"DonchUp_21"+_sep +"DonchUp_28"+_sep +"DonchUp_50"+_sep;
}

