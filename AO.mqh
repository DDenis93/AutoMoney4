double mAO[];
int hAO;
void AO()
{

double OP_Symbol[35] {
      OP_XAUUSD,
      OP_AUDJPY,
      OP_USDJPY,
      OP_EURJPY,
      OP_CHFJPY,
      OP_GBPJPY,
      OP_EURRUB,
      OP_USDRUB,
      OP_XAGUSD,
      OP_EURUSD,
      OP_GBPUSD,
      OP_USDCHF,
      OP_NZDUSD,
      OP_USDCAD,
      OP_AUDUSD,
      OP_AUDNZD,
      OP_AUDCHF,
      OP_GBPNZD,
      OP_EURAUD,
      OP_EURCAD,
      OP_EURGBP,
      OP_EURCHF,
      OP_EURNZD,
      OP_USDSGD,
      OP_GBPCAD,
      OP_GBPAUD,
      OP_EURNOK,
      OP_AUDCAD,
      OP_GBPCHF,
      OP_USDSEK,
      OP_USDMXN,
      OP_USDNOK,
      OP_EURSEK,
      OP_USDDKK,
      OP_USDZAR
};

double SL_Symbol[35]{
      SL_XAUUSD,
      SL_AUDJPY,
      SL_USDJPY,
      SL_EURJPY,
      SL_CHFJPY,
      SL_GBPJPY,
      SL_EURRUB,
      SL_USDRUB,
      SL_XAGUSD,
      SL_EURUSD,
      SL_GBPUSD,
      SL_USDCHF,
      SL_NZDUSD,
      SL_USDCAD,
      SL_AUDUSD,
      SL_AUDNZD,
      SL_AUDCHF,
      SL_GBPNZD,
      SL_EURAUD,
      SL_EURCAD,
      SL_EURGBP,
      SL_EURCHF,
      SL_EURNZD,
      SL_USDSGD,
      SL_GBPCAD,
      SL_GBPAUD,
      SL_EURNOK,
      SL_AUDCAD,
      SL_GBPCHF,
      SL_USDSEK,
      SL_USDMXN,
      SL_USDNOK,
      SL_EURSEK,
      SL_USDDKK,
      SL_USDZAR
};

double PricesMAX_AO[35] = {
  maxAO.XAUUSD,
  maxAO.AUDJPY,
  maxAO.USDJPY,
  maxAO.EURJPY,
  maxAO.CHFJPY,
  maxAO.GBPJPY,
  maxAO.EURRUB,
  maxAO.USDRUB,
  maxAO.XAGUSD,
  maxAO.EURUSD,
  maxAO.GBPUSD,
  maxAO.USDCHF,
  maxAO.NZDUSD,
  maxAO.USDCAD,
  maxAO.AUDUSD,
  maxAO.AUDNZD,
  maxAO.AUDCHF,
  maxAO.GBPNZD,
  maxAO.EURAUD,
  maxAO.EURCAD,
  maxAO.EURGBP,
  maxAO.EURCHF,
  maxAO.EURNZD,
  maxAO.USDSGD,
  maxAO.GBPCAD,
  maxAO.GBPAUD,
  maxAO.EURNOK,
  maxAO.AUDCAD,
  maxAO.GBPCHF,
  maxAO.USDSEK,
  maxAO.USDMXN,
  maxAO.USDNOK,
  maxAO.EURSEK,
  maxAO.USDDKK,
  maxAO.USDZAR
};

double PricesMIN_AO[35] = {
  minAO.XAUUSD,
  minAO.AUDJPY,
  minAO.USDJPY,
  minAO.EURJPY,
  minAO.CHFJPY,
  minAO.GBPJPY,
  minAO.EURRUB,
  minAO.USDRUB,
  minAO.XAGUSD,
  minAO.EURUSD,
  minAO.GBPUSD,
  minAO.USDCHF,
  minAO.NZDUSD,
  minAO.USDCAD,
  minAO.AUDUSD,
  minAO.AUDNZD,
  minAO.AUDCHF,
  minAO.GBPNZD,
  minAO.EURAUD,
  minAO.EURCAD,
  minAO.EURGBP,
  minAO.EURCHF,
  minAO.EURNZD,
  minAO.USDSGD,
  minAO.GBPCAD,
  minAO.GBPAUD,
  minAO.EURNOK,
  minAO.AUDCAD,
  minAO.GBPCHF,
  minAO.USDSEK,
  minAO.USDMXN,
  minAO.USDNOK,
  minAO.EURSEK,
  minAO.USDDKK,
  minAO.USDZAR
};

int ALLorders2 = OrdersTotal();                             // общее количество ОТЛОЖЕННЫХ ордеров
if(ALLorders2 == 0)
{
   ALLorders2 = 1;
}
string ALOrders[];                                          // создаем динамический массив
ArrayResize(ALOrders,ALLorders2);                           // устанавливаем размер массива равным количеству ордеров

for(int q=0; q<ALLorders2 ; q++)                            // пробегаем по количеству ордеров
{
   ulong ticket=OrderGetTicket(q);                          // копируем тикет ордера 1
   if(ticket != 0)                                          // ордер успешно скопирован
   {
      string commente = OrderGetString(ORDER_COMMENT);      // достаем из ордера комментарий
      ALOrders[q] = commente;                               // записываем комментарий в динамический массив
   }                                                        // записали все комментарии и заполнили массив 
   else
   {
      ALOrders[q] = "RANDOM";
   }
} // закрыли цикл заполнения массива коментариями    
for(int i=0;i<34;i++)
{ //Print("Заходим в цикл FOR");
         MqlTradeRequest request3;
         MqlTradeResult result3;
   if(i == AO_NewBar[i])                                    // переходим к анализу сигнала
   {
      hAO = iAO(Symbols[i],PERIOD());
      CopyBuffer(hAO,0,0,6,mAO);
      ArraySetAsSeries(mAO,true);
      if(mAO[1] > mAO[2] &&
         mAO[2] > mAO[3] &&
         mAO[3] > mAO[4] &&
         mAO[4] < mAO[5] &&
      (iHigh(Symbols[i],PERIOD(),0) < iHigh(Symbols[i],PERIOD(),1)))
      {  
         // перебираем отложенные ордера на соответствие комментарию
         bool newOrderAOBuy = true;
         bool activeOrderAOBuy = true;
         for(int Y=0;Y<ALLorders2;Y++)   // если есть сигнал по конкретной валюте
         {
            //Print("Проверяем все отложенные ордера на соответствие комментарию");
            if(ALOrders[Y] == (Symbols[i]+AO_BUY))
            {
               newOrderAOBuy = false;
               
               double stop = PositionGetDouble(POSITION_SL); // старый стоп
               double prices = PositionGetDouble(POSITION_PRICE_OPEN); // старая цена
               if((prices != PricesMAX_AO[i]) && (stop != PricesMIN_AO[i]))
               {
               long pi = SymbolInfoInteger(Symbols[i],SYMBOL_DIGITS);
               int pips=1000;
               string pip = IntegerToString(pi);
               if(pip == "2")
                  pips = 2;
               if(pip == "3")
                  pips = 3;
               if(pip == "4")
                  pips = 4;
               if(pip == "5")
                  pips = 5;
               
               double asks = SymbolInfoDouble(Symbols[i],SYMBOL_ASK);
               double bids = SymbolInfoDouble(Symbols[i],SYMBOL_BID);
               // модифицировать существующий ордер и сделать флаг на слудущую модификацию по новому бару
               /*if((PricesMAX_AO[i] > asks) && (PricesMIN_AO[i] < bids))
                  OpenOrderBuy(PricesMAX_AO[i],PricesMIN_AO[i],OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_BUY,pips);
                  
               if((PricesMAX_AO[i] > asks) && (PricesMIN_AO[i] > bids))
                  OpenOrderBuy(PricesMAX_AO[i],bids,OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_BUY,pips);
                  
               if((PricesMAX_AO[i] < asks) && (PricesMIN_AO[i] < bids))
                  OpenOrderBuy(asks,PricesMIN_AO[i],OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_BUY,pips);
                  
               if((PricesMAX_AO[i] < asks) && (PricesMIN_AO[i] > bids))
                  OpenOrderBuy(asks,bids,OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_BUY,pips);*/
               }
            }
         }
         // перебираем действующие ордера на соответствие комментарию
         
         int activeBuy=PositionsTotal();
         for(int A=0;A<activeBuy;A++)
         {
            string comentAOactiveBuy = PositionGetString(POSITION_COMMENT); // редактирование старого отложенного
            if(comentAOactiveBuy == (Symbols[i]+AO_BUY))
            {
               activeOrderAOBuy = false;
            }
         }
         if((newOrderAOBuy == true) && (activeOrderAOBuy == true) && (OpenOrderPrice[i] == true)) // новый ордер
            {
               long pi = SymbolInfoInteger(Symbols[i],SYMBOL_DIGITS);
               int pips=1000;
               string pip = IntegerToString(pi);
               if(pip == "2")
                  pips = 2;
               if(pip == "3")
                  pips = 3;
               if(pip == "4")
                  pips = 4;
               if(pip == "5")
                  pips = 5;
               
               double asks = SymbolInfoDouble(Symbols[i],SYMBOL_ASK);
               double bids = SymbolInfoDouble(Symbols[i],SYMBOL_BID);
               
               if((PricesMAX_AO[i] > asks) && (PricesMIN_AO[i] < bids))
                  OpenOrderBuy(PricesMAX_AO[i],PricesMIN_AO[i],OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_BUY,pips);
                  
               if((PricesMAX_AO[i] > asks) && (PricesMIN_AO[i] > bids))
                  OpenOrderBuy(PricesMAX_AO[i],bids,OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_BUY,pips);
                  
               if((PricesMAX_AO[i] < asks) && (PricesMIN_AO[i] < bids))
                  OpenOrderBuy(asks,PricesMIN_AO[i],OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_BUY,pips);
                  
               if((PricesMAX_AO[i] < asks) && (PricesMIN_AO[i] > bids))
                  OpenOrderBuy(asks,bids,OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_BUY,pips);                                                  
                  
                 // OpenOrderBuy(double PricesMAX,double PricesMIN, double OP_Symbol, double SL_Symbol, string Comm, string DopComm, int pips)
               
            }//else если ктакого комментария нет, то переходим к открытию нужного ордера 
      }//if анализ АО
//*********************************************** --- ПРОДАЖА --- ************************************************      
      hAO = iAO(Symbols[i],PERIOD());
      CopyBuffer(hAO,0,0,6,mAO);
      ArraySetAsSeries(mAO,true);
      if(mAO[1] < mAO[2] &&
         mAO[2] < mAO[3] &&
         mAO[3] < mAO[4] &&
         mAO[4] > mAO[5] &&
      (iLow(Symbols[i],PERIOD(),0) > iLow(Symbols[i],PERIOD(),1)))
      {
        // перебираем отложенные ордера на соответствие комментарию
         bool newOrderAOSell = true;
         bool activeOrderAOSell = true;
         for(int Y=0;Y<ALLorders2;Y++)   // если есть сигнал по конкретной валюте
         {
            if(ALOrders[Y] == (Symbols[i]+"_AO_SELL")) // отсюда неправильно работает цикл
            {
               newOrderAOSell = false;
            }
         }
         // перебираем действующие ордера на соответствие комментарию
         //MqlTradeRequest request4;
         //MqlTradeResult result4;
         int activeSell=PositionsTotal();
         for(int AA=0;AA<activeSell;AA++)
         {
            string comentAOactiveSell = PositionGetString(POSITION_COMMENT);
            if(comentAOactiveSell == (Symbols[i]+"_AO_SELL"))
            {
               activeOrderAOSell = false;
            }
         }
            if((newOrderAOSell == true) && (activeOrderAOSell == true))  // если ктакого комментария нет, то переходим к открытию нужного ордера
            {
               long pi = SymbolInfoInteger(Symbols[i],SYMBOL_DIGITS);
               int pips=1000;
               string pip = IntegerToString(pi);
               if(pip == "2")
                  pips = 2;
               if(pip == "3")
                  pips = 3;
               if(pip == "4")
                  pips = 4;
               if(pip == "5")
                  pips = 5;
               
               double asks = SymbolInfoDouble(Symbols[i],SYMBOL_ASK);
               double bids = SymbolInfoDouble(Symbols[i],SYMBOL_BID);
               
               if((PricesMAX_AO[i] > asks) && (PricesMIN_AO[i] < bids))
                  OpenOrderSell(PricesMAX_AO[i],PricesMIN_AO[i],OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_SELL,pips);
                  
               if((PricesMAX_AO[i] > asks) && (PricesMIN_AO[i] > bids))
                  OpenOrderSell(PricesMAX_AO[i],bids,OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_SELL,pips);
                  
               if((PricesMAX_AO[i] < asks) && (PricesMIN_AO[i] < bids))
                  OpenOrderSell(asks,PricesMIN_AO[i],OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_SELL,pips);
                  
               if((PricesMAX_AO[i] < asks) && (PricesMIN_AO[i] > bids))
                  OpenOrderSell(asks,bids,OP_Symbol[i],SL_Symbol[i],Symbols[i],AO_SELL,pips);
                  
                  
                  
                  
                  
                 // OpenOrderBuy(double PricesMAX,double PricesMIN, double OP_Symbol, double SL_Symbol, string Comm, string DopComm, int pips)
               
               
               
            }//if анализ АО
         }
      }
   } //if есть новый бар 
};//главный файла