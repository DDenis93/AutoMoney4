void WhatMoney()
{
switch (caseWhatMoney)     // переходим в кейс в зависимости от наличия ордеров
{
   case 0: // кейс для рассчета свободных средств для Евро Рубль
   { 
      double zalog = NormalizeDouble(ask.EURRUB/creditEURRUB*1023,2);
      //Print("залог EUR/RUB - ",zalog);
      if(balanceFreeMargin>zalog) // если свободная маржа больше минимального залога
         {  //AO(); 
         }                       // переходим в анализ графика
      else
         {Print("Свободные средства для Евро Рубль отсутствуют");}
      break;
   }
   
   case 1: // кейс для рассчета свободных средств для Евро Доллар
   { 
      double zalog = NormalizeDouble(ask.EURUSD/creditEURUSD*1023,2);
      Print("залог EUR/USD - ",zalog);
      if(balanceFreeMargin>zalog) // если свободная маржа больше минимального залога
         {  //AO(); 
         }                       // переходим в анализ графика
      else
         {Print("Свободные средства для Евро Рубль отсутствуют");}
      break;
   }
}





bool o;
if(balanceFreeMargin>3800) // если свободных денег хватает на 0,01 лот
   o = true;
else
   o = false;

};