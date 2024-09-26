//+------------------------------------------------------------------+
//|                                      z_VAC_header_BullsPower.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos del indicador BullsPower
*/

string z_VAC_header_BullsPower(string _sep){
   return "BullsPower_3"+_sep+"BullsPower_7"+_sep+"BullsPower_14"+_sep+"BullsPower_21"+_sep+"BullsPower_50"+_sep+"BullsPower_100"+_sep+"BullsPower_200"+_sep;
}

