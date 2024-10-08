//+------------------------------------------------------------------+
//|                                      VAC_Master_Extractor_v0.mq4 |
//|                                      Juan José Expósito González |
//|                                          VTALGO ACADEMY (C) 2024 |
//+------------------------------------------------------------------+
#property copyright "VTALGO ACADEMY (C) 2024"
#property version   "1.00"
#property strict

//+------------------------------------------------------------------+
//| IMPORTACIÓN DE LIBRERÍAS                                         |
//+------------------------------------------------------------------+
#include <Headers/VAC_Master_Extractor_Header.mqh>

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   // Corrección del sesgo para el caso alcista
   if (sesgo > 1) _sesgo = sesgo -1;
   else _sesgo = sesgo;
   
   if (sesgo_extraccion == alcista){
      file_handler = FileOpen("EXTRACCION_ALCISTA_"+Symbol()+"_"+
         IntegerToString(Period())+"_"+DoubleToStr(sesgo, 4)+"_"+
         IntegerToString(velas)+".csv", FILE_READ|FILE_WRITE);
   }
   if (sesgo_extraccion == bajista){
      file_handler = FileOpen("EXTRACCION_BAJISTA_"+Symbol()+"_"+
         IntegerToString(Period())+"_"+DoubleToStr(sesgo, 4)+"_"+
         IntegerToString(velas)+".csv", FILE_READ|FILE_WRITE);
   }
   if (sesgo_extraccion == sin_sesgo){
      file_handler = FileOpen("EXTRACCION_SIN_SESGO"+Symbol()+"_"+
         IntegerToString(Period())+"_"+DoubleToStr(sesgo, 4)+"_"+
         IntegerToString(velas)+".csv", FILE_READ|FILE_WRITE);
   }
   
   string header = "";
   if (includeDateTime)    header += z_VAC_header_DateTime(comma, splitDateTime);
   if (includeOHLCV)       header += z_VAC_header_OHLCV(comma);
   if (includeADX)         header += z_VAC_header_ADX(comma);
   if (includeAroonDown)   header += z_VAC_header_AroonDown(comma);
   if (includeAroonUp)     header += z_VAC_header_AroonUp(comma);
   if (includeATR)         header += z_VAC_header_ATR(comma);
   if (includeBBDown)      header += z_VAC_header_BBDown(comma);
   if (includeBBUp)        header += z_VAC_header_BBUp(comma);
   if (includeBearsPower)  header += z_VAC_header_BearsPower(comma);
   if (includeBullsPower)  header += z_VAC_header_BullsPower(comma);
   if (includeCCI)         header += z_VAC_header_CCI(comma);
   if (includeDeMarker)    header += z_VAC_header_Demarker(comma);   
   if (includeDMIMinus)    header += z_VAC_header_DMIMinus(comma);
   if (includeDMIPlus)     header += z_VAC_header_DMIPlus(comma);
   if (includeDonhcDown)   header += z_VAC_header_DonchDown(comma);
   if (includeDonhcUp)     header += z_VAC_header_DonchUp(comma);
   if (includeEnvDown)     header += z_VAC_header_EnvDown(comma);
   if (includeEnvUp)       header += z_VAC_header_EnvUp(comma);
   if (includeEMA)         header += z_VAC_header_EMA(comma);
   if (includeForce)       header += z_VAC_header_Force(comma);
   if (includeIBS)         header += z_VAC_header_IBS(comma);
   if (includeIsolated)    header += z_VAC_header_Isolated(comma);
   if (includeKeltDown)    header += z_VAC_header_KCDown(comma);
   if (includeKeltUp)      header += z_VAC_header_KCUp(comma);
   if (includeMACD)        header += z_VAC_header_MACD(comma);
   if (includeMFI)         header += z_VAC_header_MFI(comma);
   if (includeMMI)         header += z_VAC_header_MMI(comma);
   if (includeMom)         header += z_VAC_header_Mom(comma);
   if (includeOsMA)        header += z_VAC_header_OsMA(comma);
   if (includeRSI)         header += z_VAC_header_RSI(comma);
   if (includeRVI)         header += z_VAC_header_RVI(comma);
   if (includeSAR)         header += z_VAC_header_SAR(comma);
   if (includeSMA)         header += z_VAC_header_SMA(comma);
   if (includeSuperTrend)  header += z_VAC_header_SuperTrend(comma);
   if (includeStoch)       header += z_VAC_header_Stoch(comma);
   if (includeTenkan)      header += z_VAC_header_Tenkan(comma);
   if (includeVROC)        header += z_VAC_header_VROC(comma);
   if (includeWMA)         header += z_VAC_header_WMA(comma);
   if (includeWPR)         header += z_VAC_header_WPR(comma);
   
   if (includeCBBRDown)    header += z_VAC_header_CBBRDown(comma);
   if (includeCBBRUp)      header += z_VAC_header_CBBRUp(comma);
   if (includeCDonchDown)  header += z_VAC_header_CDonchRDown(comma);
   if (includeCDonchUp)    header += z_VAC_header_CDonchRUp(comma);
                           header += "LABEL";
      
   FileWrite(file_handler, header);
         
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   FileClose(file_handler);
   
  
   total_candles = up_candles + down_candles;
   pct_up_candles = SafeDivide(double(up_candles* 100),double(total_candles));
   pct_dwn_candles = SafeDivide(double(down_candles* 100),double(total_candles));
   // Mostramos las estadísticas
   if (total_candles>0) {
     
      Print("Velas totales procesadas: ", IntegerToString(total_candles));
      Print("Velas alcistas procesadas: ", IntegerToString(up_candles) +
            ". Porcentaje sobre el total: ", DoubleToString(pct_up_candles, 2), "%");
      Print("Velas bajistas procesadas: ", IntegerToString(down_candles) +
            ". Porcentaje sobre el total: ", DoubleToString(pct_dwn_candles, 2), "%");
   }
   else {
      Print("¡Ninguna vela se ha procesado!");
   }
   
  }  



//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
  
   if (iBars(NULL, 0) >= shift + min_bars){

      // --------------------------------------------------------------------------------------------------------
      
      // Determinar el valor de la etiqueta, recordad el masterclas 1 impartido por el MSc Jhon Jairo Realpe
      
      // --------------------------------------------------------------------------------------------------------
      
      label = label_candle(shift);
      
      // Actualización de estadísticas
      if (label == "UP") up_candles++;
      if (label == "DOWN") down_candles++;      
      
      
      // --------------------------------------------------------------------------------------------------------
      
      // Escribir datos en el archivo
      
      // --------------------------------------------------------------------------------------------------------
      
      if (ShouldFilterMonth(ExcludeJan, ExcludeFeb, ExcludeMar, ExcludeApr, ExcludeMay, ExcludeJun,
                             ExcludeJul, ExcludeAug, ExcludeSep, ExcludeOct, ExcludeNov, ExcludeDec)) return;
                             
      if (ShouldFilterDay(ExcludeMonday, ExcludeTuesday, ExcludeWednesday, ExcludeThursday, ExcludeFriday, ExcludeSaturday, ExcludeSunday)) return;
      string linea = "";
      if (includeDateTime)    linea += z_VAC_values_DateTime(comma, shift, splitDateTime);
      if (includeOHLCV)       linea += z_VAC_values_OHLCV(comma, shift, Digits);
      if (includeADX)         linea += z_VAC_values_ADX(comma, shift, Digits);
      if (includeAroonDown)   linea += z_VAC_values_AroonDown(comma, shift, Digits);
      if (includeAroonUp)     linea += z_VAC_values_AroonUp(comma, shift, Digits);
      if (includeATR)         linea += z_VAC_values_ATR(comma, shift, Digits);
      if (includeBBDown)      linea += z_VAC_values_BBDown(comma, shift, Digits);
      if (includeBBUp)        linea += z_VAC_values_BBUp(comma, shift, Digits);
      if (includeBearsPower)  linea += z_VAC_values_BearsPower(comma, shift, Digits);
      if (includeBullsPower)  linea += z_VAC_values_BullsPower(comma, shift, Digits);
      if (includeCCI)         linea += z_VAC_values_CCI(comma, shift, Digits);
      if (includeDeMarker)    linea += z_VAC_values_DeMarker(comma, shift, Digits);
      if (includeDMIMinus)    linea += z_VAC_values_DMIMinus(comma, shift, Digits);
      if (includeDMIPlus)     linea += z_VAC_values_DMIPlus(comma, shift, Digits);
      if (includeDonhcDown)   linea += z_VAC_values_DonchDown(comma, shift, Digits);
      if (includeDonhcUp)     linea += z_VAC_values_DonchUp(comma, shift, Digits);
      if (includeEnvDown)     linea += z_VAC_values_EnvDown(comma, shift, Digits);
      if (includeEnvUp)       linea += z_VAC_values_EnvUp(comma, shift, Digits);
      if (includeEMA)         linea += z_VAC_values_EMA(comma, shift, Digits);
      if (includeForce)       linea += z_VAC_values_Force(comma, shift, Digits);
      if (includeIsolated)    linea += z_VAC_values_Isolated(comma, shift, Digits);
      if (includeIBS)         linea += z_VAC_values_IBS(comma, shift, Digits);
      if (includeKeltDown)    linea += z_VAC_values_KCDown(comma, shift, Digits);
      if (includeKeltUp)      linea += z_VAC_values_KCUp(comma, shift, Digits);
      if (includeMACD)        linea += z_VAC_values_MACD(comma, shift, Digits);
      if (includeMFI)         linea += z_VAC_values_MFI(comma, shift, Digits);
      if (includeMMI)         linea += z_VAC_values_MMI(comma, shift, Digits);
      if (includeMom)         linea += z_VAC_values_Mom(comma, shift, Digits);
      if (includeOsMA)        linea += z_VAC_values_OsMA(comma, shift, Digits);
      if (includeRSI)         linea += z_VAC_values_RSI(comma, shift, Digits);
      if (includeRVI)         linea += z_VAC_values_RVI(comma, shift, Digits);
      if (includeSAR)         linea += z_VAC_values_SAR(comma, shift, Digits);
      if (includeSMA)         linea += z_VAC_values_SMA(comma, shift, Digits);
      if (includeSuperTrend)  linea += z_VAC_values_SuperTrend(comma, shift, Digits);
      if (includeStoch)       linea += z_VAC_values_Stoch(comma, shift, Digits);
      if (includeTenkan)      linea += z_VAC_values_Tenkan(comma, shift, Digits);
      if (includeVROC)        linea += z_VAC_values_VROC(comma, shift, Digits);
      if (includeWMA)         linea += z_VAC_values_WMA(comma, shift, Digits);
      if (includeWPR)         linea += z_VAC_values_WPR(comma, shift, Digits);
      if (includeCBBRDown)    linea += z_VAC_values_CBBRDown(comma, shift, Digits);
      if (includeCBBRUp)      linea += z_VAC_values_CBBRUp(comma, shift, Digits);
      if (includeCDonchDown)  linea += z_VAC_values_CDonchRDown(comma, shift, Digits);
      if (includeCDonchUp)    linea += z_VAC_values_CDonchRUp(comma, shift, Digits);   
                              linea += label;
      
      if (label!=NULL) FileWrite(file_handler, linea);
            
      FileFlush(file_handler);         

      
      // --------------------------------------------------------------------------------------------------------
      
      
   } // if Bars
  
 } // OnTick
//+------------------------------------------------------------------+
