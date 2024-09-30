//+------------------------------------------------------------------+
//|                                      z_VAC_header_C_DonchRUp.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del cociente entre el 
 * cierre y la banda superior del canal de Donchian
*/

string z_VAC_header_CDonchRUp(string _sep){
   return "C_DonchRUp_7"+_sep+"C_DonchRUp_14"+_sep+"C_DonchRUp_21"+_sep+"C_DonchRUp_28"+_sep+"C_DonchRUp_50"+_sep;
}


