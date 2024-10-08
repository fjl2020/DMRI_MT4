//+------------------------------------------------------------------+
//|                                        z_VAC_values_Isolated.mqh |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+

/*
 * Archivo que genera los datos de indicadores que carecen de periodo
*/

string z_VAC_values_Isolated(string _sep, int _shift, int _digits){
   double Awesome          = iAO(NULL, 0, _shift);
   double AC               = iAC(NULL, 0, _shift);
   double AD               = iAD(NULL, 0, _shift);
   double BWMFI            = iBWMFI(NULL, 0, _shift);
      
   return DoubleToStr(Awesome, _digits)+ _sep + DoubleToStr(AC, _digits) + _sep + DoubleToStr(AD, _digits) + _sep + DoubleToStr(BWMFI, _digits) + _sep;
}

