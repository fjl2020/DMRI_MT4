//+------------------------------------------------------------------+
//|                                          z_VAC_header_Tenkan.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera la cabecera para los datos de la línea Tenkan 
 * del indicador Ichimoku
*/

string z_VAC_header_Tenkan(string _sep){
   return "Tenkan_9_26_52"+_sep +"Tenkan_13_26_52"+_sep +"Tenkan_21_26_52"+_sep +"Tenkan_28_26_52"+_sep;
}

