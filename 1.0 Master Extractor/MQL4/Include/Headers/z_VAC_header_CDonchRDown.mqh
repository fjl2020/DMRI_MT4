//+------------------------------------------------------------------+
//|                                    z_VAC_header_C_DonchRDown.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del cociente entre el 
 * cierre y la banda inferior del canal de Donchian
*/

string z_VAC_header_CDonchRDown(string _sep){
   return "C_DonchRDown_7"+_sep+"C_DonchRDown_14"+_sep+"C_DonchRDown_21"+_sep+"C_DonchRDown_28"+_sep+"C_DonchRDown_50"+_sep;
}


