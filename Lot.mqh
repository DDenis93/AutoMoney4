void Lot()
{
double risk=0.0;
switch(caseLotAO)
{
   case 0:
   {
Print("-----------------------");
   //double price = iHigh("EURRUBrfd",PERIOD(),0);
   //double moneyNZD = NormalizeDouble((price/40*1020),2);
   //double priceRUBUSD = iHigh("EURRUBrfd",PERIOD(),0);
   //double zalogRUB = NormalizeDouble(moneyNZD*priceRUBUSD,2);
   double zalog = NormalizeDouble(ask.EURRUB/creditEURRUB*1023,2);
   Print("Залог в рублях из лота - ",zalog);
   

   
   //lots = NormalizeDouble((AccountInfoDouble(ACCOUNT_MARGIN_FREE)/(zalogRUB*110))/2,2); // получаем объем в лотах на текущую сделку
   Print(lot); // выводим полученное значение объема лота рассчитанное для текущей сделки

   //if(AO_SIGNAL[0] == true && AO_ORDERS[0] == 0)
   //{                                                                                            // если есть сигнал и нет тикета
   
   
   
   
   MqlTick tick_EURRUB_BAY;                                                                     // создаем массив с параметрами тика
   SymbolInfoTick("EURRUBrfd",tick_EURRUB_BAY);                                                 // получаем информацию по валюте
   Max_EURRUB_BAY_AO = NormalizeDouble(iHigh("EURRUBrfd",PERIOD(),1),4);          // получаем максимум бара + спред
   Print("максимум бара 1 - ",Max_EURRUB_BAY_AO);
   Min_EURRUB_BAY_AO = NormalizeDouble(iLow("EURRUBrfd",PERIOD(),1),4);           // получаем минимум бара +- спред
   Print("минимум бара 1 - ",Min_EURRUB_BAY_AO);
   long pips = StringToInteger(DoubleToString((Max_EURRUB_BAY_AO-Min_EURRUB_BAY_AO)*1000));   // количество пунктов
   Print("Пункты - ",pips); 
   
   spread = SymbolInfoInteger("EURRUBrfd",SYMBOL_SPREAD);
   Print("спред = ",spread);
   Print("Потенциальный убыток в пунктах = ",spread+pips);
   Print("Потенциальный убыток в рублях = ",NormalizeDouble((pips+spread)*0.10,2));     
   break;                                                                         // переходим к открытию ордера
   Print("-----------------------");
   } //}

   case 1:
   {
   //double priceNZD = iHigh("EURRUBrfd",PERIOD(),0);
   //double moneyNZD = NormalizeDouble((priceNZD/AccountInfoInteger(ACCOUNT_LEVERAGE)*1000),2);
   //double priceRUBUSD = iHigh("EURRUBrfd",PERIOD(),0);
   //double zalogRUB = NormalizeDouble(moneyNZD*priceRUBUSD,2);
   
   double zalog = NormalizeDouble(ask.EURRUB/creditEURRUB*1023,2);
   Print("Залог в рублях из лота - ",zalog);
   
Print("-----------------------");
   
   //lots = NormalizeDouble((AccountInfoDouble(ACCOUNT_MARGIN_FREE)/(zalogRUB*110))/2,2); // получаем объем в лотах на текущую сделку
   Print(lot); // выводим полученное значение объема лота рассчитанное для текущей сделки

   //if(AO_SIGNAL[0] == true && AO_ORDERS[0] == 0)
   //{                                                                                            // если есть сигнал и нет тикета
   MqlTick tick_EURRUB_SELL;                                                                     // создаем массив с параметрами тика
   SymbolInfoTick("EURRUBrfd",tick_EURRUB_SELL);                                                 // получаем информацию по валюте
   Max_EURRUB_SELL_AO = NormalizeDouble(iHigh("EURRUBrfd",PERIOD(),1)+(StopLoss*Point()),4);          // получаем максимум бара + спред
   Min_EURRUB_SELL_AO = NormalizeDouble(iLow("EURRUBrfd",PERIOD(),1)-(2500*Point()),4);           // получаем минимум бара +- спред
   
   long pips = StringToInteger(DoubleToString((Max_EURRUB_SELL_AO-Min_EURRUB_SELL_AO)*1000));   // количество пунктов
   Print("Пункты - ",pips); 
   
   spread = SymbolInfoInteger("EURRUBrfd",SYMBOL_SPREAD);
   Print("спред = ",spread);
   Print("Потенциальный убыток в пунктах = ",spread+pips);
   Print("Потенциальный убыток в рублях = ",NormalizeDouble((pips+spread)*0.10,2));

   break;                                                                             // переходим к открытию ордера
   Print("-----------------------");
   } //}

}








// Блок NZDUSD

   

   
signalAO = 0; // обнуление счетчика сигналов АО
Sleep(0);
};