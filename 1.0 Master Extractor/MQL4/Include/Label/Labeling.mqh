//+------------------------------------------------------------------+
//|                                                    Labelling.mq4 |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict


//+------------------------------------------------------------------+
//| VARIABLES DE ENTRADA                                             |
//+------------------------------------------------------------------+

enum labeling{
   unbalanced_candles   = 0,
   donchian_average     = 1,
   close_sma_ratio      = 2,
};

enum extraccion{
   alcista = 0,
   bajista = 1,
   sin_sesgo = 2,
};

enum ExitMode {
   SignaLost,
   AfterNCandles,
};

sinput   string   sext001           = "==================> MODO DE SALIDA <=========================";
input    ExitMode exit_mode          = AfterNCandles;
input    int      N_Candles         = 1;    // Máximo número de velas en mercado (modo AfterNCandles)

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| PARÁMETROS DE ENTRADA                                            |
//+------------------------------------------------------------------+

sinput string  slabel               = "========================> LABELLING <========================";
input int velas                     = 1;
sinput string sunbalanced           = "========================> ETIQUETADO DESBALANCE <========================";
input labeling label_method         = unbalanced_candles;
input double sesgo                  = 0.001;             // Sesgo de extracción
input extraccion sesgo_extraccion   = alcista;    // Tipo de extracción
sinput string sdonchian             = "========================> ETIQUETADO DONCHIAN <========================";
input int      donchianPd           = 20;
sinput string sSMA                  = "========================> ETIQUETADO SMA <========================";
input int smaPd                     = 200;
sinput string EXT_STR               = "========================> ENSAMBLADOS <========================";
sinput bool ExtraccionEnsamblado    = false;

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| VARIABLES INTERNAS                                               |
//+------------------------------------------------------------------+
// Comprobación del sesgo
double _sesgo = 0.0;
int shift = velas + 1;
string label = NULL;


//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| FUNCIÓN DE ETIQUETADO                                            |
//+------------------------------------------------------------------+

string label_candle(int _shift){   
   if (sesgo_extraccion == alcista) {
         
         label = "DOWN";

         
         if(label_method == unbalanced_candles){
            if(Open[0] > Open[_shift-1] && Open[0]/Open[_shift-1] >= (1+_sesgo)) {
               label = "UP";
            }
         }
         
         if(label_method == donchian_average){
            double donchianAv = (iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 0, _shift)+iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 1, _shift))/2;
            if(Open[0] > Open[_shift-1] && Open[0] > donchianAv){
               label = "UP";               
            }
         }
      }
      
      if (sesgo_extraccion == bajista) {
         
         label = "UP";
         
         if(label_method == unbalanced_candles){
            if(Open[0] < Open[_shift-1] && Open[0]/Open[_shift-1] <= (1 - _sesgo)) {
               label = "DOWN";
            }
         }
         
         if(label_method == donchian_average){
            double donchianAv = (iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 0, _shift)+iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 1, _shift))/2;
            if(Open[0] < Open[_shift-1] && Open[0] < donchianAv){
               label = "UP";
            }
         }
         
      }
      
      if (sesgo_extraccion == sin_sesgo) {
         label = "UP";

         
         if(label_method == unbalanced_candles){
            if (Open[0]>Open[_shift-1]) {
               label = "UP";
            }
            
            if (Open[0]<Open[_shift-1]) {
               label = "DOWN";
            }
         }
         
         if(label_method == donchian_average){
            double donchianAv = (iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 0, _shift)+iCustom(NULL, 0, "Custom/DonchianChannel", donchianPd, 1, _shift))/2;
            if(Open[0] > Open[_shift-1] && Open[0] > donchianAv){
               label = "UP";               
            }
            
            if(Open[0] < Open[_shift-1] && Open[0] < donchianAv){
               label = "UP";
            }
         }
      }
      
      return label;
}

//+------------------------------------------------------------------+