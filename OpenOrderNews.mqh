//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool OpenOrderNews()
  {

   double PricesASK[35] =
     {
      ask.XAUUSD,
      ask.AUDJPY,
      ask.USDJPY,
      ask.EURJPY,
      ask.CHFJPY,
      ask.GBPJPY,
      ask.EURRUB,
      ask.USDRUB,
      ask.XAGUSD,
      ask.EURUSD,
      ask.GBPUSD,
      ask.USDCHF,
      ask.NZDUSD,
      ask.USDCAD,
      ask.AUDUSD,
      ask.AUDNZD,
      ask.AUDCHF,
      ask.GBPNZD,
      ask.EURAUD,
      ask.EURCAD,
      ask.EURGBP,
      ask.EURCHF,
      ask.EURNZD,
      ask.USDSGD,
      ask.GBPCAD,
      ask.GBPAUD,
      ask.EURNOK,
      ask.AUDCAD,
      ask.GBPCHF,
      ask.USDSEK,
      ask.USDMXN,
      ask.USDNOK,
      ask.EURSEK,
      ask.USDDKK,
      ask.USDZAR
     };

   double PricesBID[35] =
     {
      bid.XAUUSD,
      bid.AUDJPY,
      bid.USDJPY,
      bid.EURJPY,
      bid.CHFJPY,
      bid.GBPJPY,
      bid.EURRUB,
      bid.USDRUB,
      bid.XAGUSD,
      bid.EURUSD,
      bid.GBPUSD,
      bid.USDCHF,
      bid.NZDUSD,
      bid.USDCAD,
      bid.AUDUSD,
      bid.AUDNZD,
      bid.AUDCHF,
      bid.GBPNZD,
      bid.EURAUD,
      bid.EURCAD,
      bid.EURGBP,
      bid.EURCHF,
      bid.EURNZD,
      bid.USDSGD,
      bid.GBPCAD,
      bid.GBPAUD,
      bid.EURNOK,
      bid.AUDCAD,
      bid.GBPCHF,
      bid.USDSEK,
      bid.USDMXN,
      bid.USDNOK,
      bid.EURSEK,
      bid.USDDKK,
      bid.USDZAR
     };

   int ALLordersNews = OrdersTotal();                             // общее количество ОТЛОЖЕННЫХ ордеров
   if(ALLordersNews == 0)
     {
      ALLordersNews = 1;
      //Print("Нет ордеров - присваиваем значение 1");
     }
   string ALOrders[];                                          // создаем динамический массив
   ArrayResize(ALOrders,ALLordersNews);                           // устанавливаем размер массива равным количеству ордеров
//Print("Всего отложенных ордеров = ",ALLorders2);            // 90 к примеру

   for(int q=0; q<ALLordersNews ; q++)                            // пробегаем по количеству ордеров
     {
      ulong ticket=OrderGetTicket(q);                          // копируем тикет ордера 1
      if(ticket != 0)                                          // ордер успешно скопирован
        {
         string commente = OrderGetString(ORDER_COMMENT);      // достаем из ордера комментарий
         ALOrders[q] = commente;                               // записываем комментарий в динамический массив
         //Print("Есть ордер с комментарием - ",commente);

        }                                                        // записали все комментарии и заполнили массив
      else
        {
         ALOrders[q] = "RANDOM";
         //Print("Нет ордера, присваиваем комментарий RANDOM - ",ALOrders[q]);
        }
     } // закрыли цикл заполнения массива коментариями

   for(int i=0; i<34; i++)
     {
      //Print("Заходим в цикл FOR");
      if(i == AO_NewBar[i])                                    // переходим к анализу сигнала
        {
         // перебираем отложенные ордера на соответствие комментарию

         bool newOrderNews = true;
         bool activeOrderNews = true;
         for(int Y=0; Y<ALLordersNews; Y++) // если есть сигнал по конкретной валюте
           {
            //Print("Проверяем все отложенные ордера на соответствие комментарию");
            if(ALOrders[Y] == (Symbols[i]+signal_NEWS_Buy)) // отсюда неправильно работает цикл
              {
               //Print("Такой отложенный ордер на BUY уже есть!!! ", Symbols[i]+"_NEWS_BUY");
               newOrderNews = false;
              }
           }
         // перебираем действующие ордера на соответствие комментарию
         MqlTradeRequest request;
         MqlTradeResult result;
         int active=PositionsTotal();
         for(int A=0; A<active; A++)
           {
            string comentNewsActive = PositionGetString(POSITION_COMMENT);
            if(comentNewsActive == (Symbols[i]+signal_NEWS_Buy))
              {
               activeOrderNews = false;
              }
           }
         // переходим к открытию ордера

         if((newOrderNews == true) && (activeOrderNews == true))
           {
            if((i == 0) && (OpenOrderPriceXAUUSD == true)) // XAUUSD .2
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_XAUUSD,SL_XAUUSD,Symbols[i], signal_NEWS_Buy,2);
              }
            if((i == 1) && (OpenOrderPriceAUDJPY == true)) // AUDJPY .3
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_AUDJPY,SL_AUDJPY,Symbols[i], signal_NEWS_Buy,3);
              }
            if((i == 2) && (OpenOrderPriceUSDJPY == true)) // USDJPY .3
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDJPY,SL_USDJPY,Symbols[i], signal_NEWS_Buy,3);
              }
            if((i == 3) && (OpenOrderPriceEURJPY == true)) // EURJPY .3
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURJPY,SL_EURJPY,Symbols[i], signal_NEWS_Buy,3);
              }
            if((i == 4) && (OpenOrderPriceCHFJPY == true)) // CHFJPY .3
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_CHFJPY,SL_CHFJPY,Symbols[i], signal_NEWS_Buy,3);
              }
            if((i == 5) && (OpenOrderPriceGBPJPY == true)) // GBPJPY .3
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_GBPJPY,SL_GBPJPY,Symbols[i], signal_NEWS_Buy,3);
              }
            if((i == 6) && (OpenOrderPriceEURRUB == true)) // EURRUB .4
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURRUB,SL_EURRUB,Symbols[i], signal_NEWS_Buy,4);
              }
            if((i == 7) && (OpenOrderPriceUSDRUB == true)) // USDRUB .4
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDRUB,SL_USDRUB,Symbols[i], signal_NEWS_Buy,4);
              }
            if((i == 8) && (OpenOrderPriceXAGUSD == true)) // XAGUSD .4
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_XAGUSD,SL_XAGUSD,Symbols[i], signal_NEWS_Buy,4);
              }
            if((i == 9) && (OpenOrderPriceEURUSD == true)) // EURUSD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURUSD,SL_EURUSD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 10) && (OpenOrderPriceGBPUSD == true)) // GBPUSD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_GBPUSD,SL_GBPUSD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 11) && (OpenOrderPriceUSDCHF == true)) // USDCHF .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDCHF,SL_USDCHF,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 12) && (OpenOrderPriceNZDUSD == true)) // NZDUSD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_NZDUSD,SL_NZDUSD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 13) && (OpenOrderPriceUSDCAD == true)) // USDCAD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDCAD,SL_USDCAD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 14) && (OpenOrderPriceAUDUSD == true)) // AUDUSD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_AUDUSD,SL_AUDUSD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 15) && (OpenOrderPriceAUDNZD == true)) // AUDNZD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_AUDNZD,SL_AUDNZD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 16) && (OpenOrderPriceAUDCHF == true)) // AUDCHF .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_AUDCHF,SL_AUDCHF,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 17) && (OpenOrderPriceGBPNZD == true)) // GBPNZD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_GBPNZD,SL_GBPNZD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 18) && (OpenOrderPriceEURAUD == true)) // EURAUD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURAUD,SL_EURAUD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 19) && (OpenOrderPriceEURCAD == true)) // EURCAD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURCAD,SL_EURCAD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 20) && (OpenOrderPriceEURGBP == true)) // EURGBP .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURGBP,SL_EURGBP,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 21) && (OpenOrderPriceEURCHF == true)) // EURCHF .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURCHF,SL_EURCHF,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 22) && (OpenOrderPriceEURNZD == true)) // EURNZD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURNZD,SL_EURNZD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 23) && (OpenOrderPriceUSDSGD == true)) // USDSGD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDSGD,SL_USDSGD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 24) && (OpenOrderPriceGBPCAD == true)) // GBPCAD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_GBPCAD,SL_GBPCAD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 25) && (OpenOrderPriceGBPAUD == true)) // GBPAUD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_GBPAUD,SL_GBPAUD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 26) && (OpenOrderPriceEURNOK == true)) // EURNOK .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURNOK,SL_EURNOK,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 27) && (OpenOrderPriceAUDCAD == true)) // AUDCAD .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_AUDCAD,SL_AUDCAD,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 28) && (OpenOrderPriceGBPCHF == true)) // GBPCHF .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_GBPCHF,SL_GBPCHF,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 29) && (OpenOrderPriceUSDSEK == true)) // USDSEK .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDSEK,SL_USDSEK,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 30) && (OpenOrderPriceUSDMXN == true)) // USDMXN .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDMXN,SL_USDMXN,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 31) && (OpenOrderPriceUSDNOK == true)) // USDNOK .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDNOK,SL_USDNOK,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 32) && (OpenOrderPriceEURSEK == true)) // EURSEK .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_EURSEK,SL_EURSEK,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 33) && (OpenOrderPriceUSDDKK == true)) // USDDKK .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDDKK,SL_USDDKK,Symbols[i], signal_NEWS_Buy,5);
              }
            if((i == 34) && (OpenOrderPriceUSDZAR == true)) // USDZAR .5
              {
               Order_Buy(PricesASK[i],PricesBID[i],OP_USDZAR,SL_USDZAR,Symbols[i], signal_NEWS_Buy,5);
              }
           }//else если ктакого комментария нет, то переходим к открытию нужного ордера
        }//if анализ АО
     } //if есть новый бар


//**********************************************************************************
   for(int i=1; i<34; i++)
     {
      if(i == AO_NewBar[i])                                    // переходим к анализу сигнала
        {
         bool newOrderNews = true;
         bool activeOrderNews = true;
         for(int Y=0; Y<ALLordersNews; Y++) // если есть сигнал по конкретной валюте
           {
            //Print("Проверяем все отложенные ордера на соответствие комментарию");
            if(ALOrders[Y] == (Symbols[i]+"_NEWS_SELL")) // отсюда неправильно работает цикл
              {
               //Print("Такой отложенный ордер на BUY уже есть!!! ", Symbols[i]+"_NEWS_BUY");
               newOrderNews = false;
              }
           }
         // перебираем действующие ордера на соответствие комментарию
            MqlTradeRequest request0;
            MqlTradeResult result0;
            int active=PositionsTotal();
            for(int A=0; A<active; A++)
              {
               string comentNewsActive = PositionGetString(POSITION_COMMENT);
               if(comentNewsActive == (Symbols[i]+"_NEWS_SELL"))
                 {
                  //Print("Такой активный ордер на BUY уже есть!!! ", Symbols[i]+"_NEWS_BUY");
                  activeOrderNews = false;
                 }
              }
            if((newOrderNews == true) && (activeOrderNews == true))  // если ктакого комментария нет, то переходим к открытию нужного ордера
              {
               if((i == 0) && (OpenOrderPriceXAUUSD == true)) // XAUUSD .2
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_XAUUSD,SL_XAUUSD,Symbols[i], signal_NEWS_Sell,2);
                 }
               if((i == 1) && (OpenOrderPriceAUDJPY == true)) // AUDJPY .3
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_AUDJPY,SL_AUDJPY,Symbols[i], signal_NEWS_Sell,3);
                 }
               if((i == 2) && (OpenOrderPriceUSDJPY == true)) // USDJPY .3
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDJPY,SL_USDJPY,Symbols[i], signal_NEWS_Sell,3);
                 }
               if((i == 3) && (OpenOrderPriceEURJPY == true)) // EURJPY .3
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURJPY,SL_EURJPY,Symbols[i], signal_NEWS_Sell,3);
                 }
               if((i == 4) && (OpenOrderPriceCHFJPY == true)) // CHFJPY .3
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_CHFJPY,SL_CHFJPY,Symbols[i], signal_NEWS_Sell,3);
                 }
               if((i == 5) && (OpenOrderPriceGBPJPY == true)) // GBPJPY .3
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_GBPJPY,SL_GBPJPY,Symbols[i], signal_NEWS_Sell,3);
                 }
               if((i == 6) && (OpenOrderPriceEURRUB == true)) // EURRUB .4
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURRUB,SL_EURRUB,Symbols[i], signal_NEWS_Sell,4);
                 }
               if((i == 7) && (OpenOrderPriceUSDRUB == true)) // USDRUB .4
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDRUB,SL_USDRUB,Symbols[i], signal_NEWS_Sell,4);
                 }
               if((i == 8) && (OpenOrderPriceXAGUSD == true)) // XAGUSD .4
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_XAGUSD,SL_XAGUSD,Symbols[i], signal_NEWS_Sell,4);
                 }
               if((i == 9) && (OpenOrderPriceEURUSD == true)) // EURUSD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURUSD,SL_EURUSD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 10) && (OpenOrderPriceGBPUSD == true)) // GBPUSD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_GBPUSD,SL_GBPUSD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 11) && (OpenOrderPriceUSDCHF == true)) // USDCHF .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDCHF,SL_USDCHF,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 12) && (OpenOrderPriceNZDUSD == true)) // NZDUSD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_NZDUSD,SL_NZDUSD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 13) && (OpenOrderPriceUSDCAD == true)) // USDCAD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDCAD,SL_USDCAD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 14) && (OpenOrderPriceAUDUSD == true)) // AUDUSD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_AUDUSD,SL_AUDUSD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 15) && (OpenOrderPriceAUDNZD == true)) // AUDNZD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_AUDNZD,SL_AUDNZD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 16) && (OpenOrderPriceAUDCHF == true)) // AUDCHF .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_AUDCHF,SL_AUDCHF,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 17) && (OpenOrderPriceGBPNZD == true)) // GBPNZD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_GBPNZD,SL_GBPNZD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 18) && (OpenOrderPriceEURAUD == true)) // EURAUD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURAUD,SL_EURAUD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 19) && (OpenOrderPriceEURCAD == true)) // EURCAD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURCAD,SL_EURCAD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 20) && (OpenOrderPriceEURGBP == true)) // EURGBP .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURGBP,SL_EURGBP,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 21) && (OpenOrderPriceEURCHF == true)) // EURCHF .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURCHF,SL_EURCHF,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 22) && (OpenOrderPriceEURNZD == true)) // EURNZD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURNZD,SL_EURNZD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 23) && (OpenOrderPriceUSDSGD == true)) // USDSGD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDSGD,SL_USDSGD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 24) && (OpenOrderPriceGBPCAD == true)) // GBPCAD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_GBPCAD,SL_GBPCAD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 25) && (OpenOrderPriceGBPAUD == true)) // GBPAUD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_GBPAUD,SL_GBPAUD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 26) && (OpenOrderPriceEURNOK == true)) // EURNOK .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURNOK,SL_EURNOK,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 27) && (OpenOrderPriceAUDCAD == true)) // AUDCAD .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_AUDCAD,SL_AUDCAD,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 28) && (OpenOrderPriceGBPCHF == true)) // GBPCHF .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_GBPCHF,SL_GBPCHF,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 29) && (OpenOrderPriceUSDSEK == true)) // USDSEK .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDSEK,SL_USDSEK,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 30) && (OpenOrderPriceUSDMXN == true)) // USDMXN .5
                 {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDMXN,SL_USDMXN,Symbols[i], signal_NEWS_Sell,5);
                 }
               if((i == 31) && (OpenOrderPriceUSDNOK == true)) // USDNOK .5
               {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDNOK,SL_USDNOK,Symbols[i], signal_NEWS_Sell,5);
               }
               if((i == 32) && (OpenOrderPriceEURSEK == true)) // EURSEK .5
               {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_EURSEK,SL_EURSEK,Symbols[i], signal_NEWS_Sell,5);
               }
               if((i == 33) && (OpenOrderPriceUSDDKK == true)) // USDDKK .5
               {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDDKK,SL_USDDKK,Symbols[i], signal_NEWS_Sell,5);
               }
               if((i == 34) && (OpenOrderPriceUSDZAR == true)) // USDZAR .5
               {
                  Order_Sell(PricesASK[i],PricesBID[i],OP_USDZAR,SL_USDZAR,Symbols[i], signal_NEWS_Sell,5);
               }//else если ктакого комментария нет, то переходим к открытию нужного ордера
            }//if анализ АО
         } //if есть новый бар
      }
   return(true);
};
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
