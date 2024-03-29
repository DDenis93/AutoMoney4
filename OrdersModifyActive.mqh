void OrdersModifyActive()
{
   MqlTradeRequest request1;
   MqlTradeResult result1;
   int total1=PositionsTotal();
   //Print("Всего действующих ордеров - ",total1);
   for(int i=0;i<total1;i++)
   {
      ulong position_ticket = PositionGetTicket(i); // тикет позиции
      double sl=PositionGetDouble(POSITION_SL);  // Stop Loss позиции текущий
      ENUM_POSITION_TYPE type=(ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);  // тип позиции
      string coment = PositionGetString(POSITION_COMMENT);
      double price1 = PositionGetDouble(POSITION_PRICE_OPEN);        // цена открытия ордера
      
      double stl_XAUUSD_Buy  = NormalizeDouble(bid.XAUUSD-TS_XAUUSD*Point(),2);
      double stl_XAUUSD_Sell = NormalizeDouble(ask.XAUUSD+TS_XAUUSD*Point(),2);
      double stl_AUDJPY_Buy  = NormalizeDouble(bid.AUDJPY-TS_AUDJPY*Point(),3);
      double stl_AUDJPY_Sell = NormalizeDouble(ask.AUDJPY+TS_AUDJPY*Point(),3);
      double stl_USDJPY_Buy  = NormalizeDouble(bid.USDJPY-TS_USDJPY*Point(),3);
      double stl_USDJPY_Sell = NormalizeDouble(ask.USDJPY+TS_USDJPY*Point(),3);
      double stl_EURJPY_Buy  = NormalizeDouble(bid.EURJPY-TS_EURJPY*Point(),3);
      double stl_EURJPY_Sell = NormalizeDouble(ask.EURJPY+TS_EURJPY*Point(),3);
      double stl_CHFJPY_Buy  = NormalizeDouble(bid.CHFJPY-TS_CHFJPY*Point(),3);
      double stl_CHFJPY_Sell = NormalizeDouble(ask.CHFJPY+TS_CHFJPY*Point(),3);
      double stl_GBPJPY_Buy  = NormalizeDouble(bid.GBPJPY-TS_GBPJPY*Point(),3);
      double stl_GBPJPY_Sell = NormalizeDouble(ask.GBPJPY+TS_GBPJPY*Point(),3);
      double stl_EURRUB_Buy  = NormalizeDouble(bid.EURRUB-TS_EURRUB*Point(),4); // цена нового стоп лосса
      double stl_EURRUB_Sell = NormalizeDouble(ask.EURRUB+TS_EURRUB*Point(),4);
      double stl_USDRUB_Buy  = NormalizeDouble(bid.USDRUB-TS_USDRUB*Point(),4);
      double stl_USDRUB_Sell = NormalizeDouble(ask.USDRUB+TS_USDRUB*Point(),4);
      double stl_XAGUSD_Buy  = NormalizeDouble(bid.XAGUSD-TS_XAGUSD*Point(),4);
      double stl_XAGUSD_Sell = NormalizeDouble(ask.XAGUSD+TS_XAGUSD*Point(),4);
      double stl_EURUSD_Buy  = NormalizeDouble(bid.EURUSD-TS_EURUSD*Point(),5);
      double stl_EURUSD_Sell = NormalizeDouble(ask.EURUSD+TS_EURUSD*Point(),5);
      double stl_GBPUSD_Buy  = NormalizeDouble(bid.GBPUSD-TS_GBPUSD*Point(),5);
      double stl_GBPUSD_Sell = NormalizeDouble(ask.GBPUSD+TS_GBPUSD*Point(),5);
      double stl_USDCHF_Buy  = NormalizeDouble(bid.USDCHF-TS_USDCHF*Point(),5);
      double stl_USDCHF_Sell = NormalizeDouble(ask.USDCHF+TS_USDCHF*Point(),5);
      double stl_NZDUSD_Buy  = NormalizeDouble(bid.NZDUSD-TS_NZDUSD*Point(),5);
      double stl_NZDUSD_Sell = NormalizeDouble(ask.NZDUSD+TS_NZDUSD*Point(),5);
      double stl_USDCAD_Buy  = NormalizeDouble(bid.USDCAD-TS_USDCAD*Point(),5);
      double stl_USDCAD_Sell = NormalizeDouble(ask.USDCAD+TS_USDCAD*Point(),5); 
      double stl_AUDUSD_Buy  = NormalizeDouble(bid.AUDUSD-TS_AUDUSD*Point(),5);
      double stl_AUDUSD_Sell = NormalizeDouble(ask.AUDUSD+TS_AUDUSD*Point(),5);
      double stl_AUDNZD_Buy  = NormalizeDouble(bid.AUDNZD-TS_AUDNZD*Point(),5);
      double stl_AUDNZD_Sell = NormalizeDouble(ask.AUDNZD+TS_AUDNZD*Point(),5);
      double stl_AUDCHF_Buy  = NormalizeDouble(bid.AUDCHF-TS_AUDCHF*Point(),5);
      double stl_AUDCHF_Sell = NormalizeDouble(ask.AUDCHF+TS_AUDCHF*Point(),5); 
      double stl_GBPNZD_Buy  = NormalizeDouble(bid.GBPNZD-TS_GBPNZD*Point(),5);
      double stl_GBPNZD_Sell = NormalizeDouble(ask.GBPNZD+TS_GBPNZD*Point(),5);
      double stl_EURAUD_Sell = NormalizeDouble(ask.EURAUD-TS_EURAUD*Point(),5);
      double stl_EURAUD_Buy  = NormalizeDouble(bid.EURAUD+TS_EURAUD*Point(),5);
      double stl_EURCAD_Buy  = NormalizeDouble(bid.EURCAD-TS_EURCAD*Point(),5);
      double stl_EURCAD_Sell = NormalizeDouble(ask.EURCAD+TS_EURCAD*Point(),5);
      double stl_EURGBP_Buy  = NormalizeDouble(bid.EURGBP-TS_EURGBP*Point(),5);
      double stl_EURGBP_Sell = NormalizeDouble(ask.EURGBP+TS_EURGBP*Point(),5);
      double stl_EURCHF_Buy  = NormalizeDouble(bid.EURCHF-TS_EURCHF*Point(),5);
      double stl_EURCHF_Sell = NormalizeDouble(ask.EURCHF+TS_EURCHF*Point(),5);
      double stl_EURNZD_Buy  = NormalizeDouble(bid.EURNZD-TS_EURNZD*Point(),5);
      double stl_EURNZD_Sell = NormalizeDouble(ask.EURNZD+TS_EURNZD*Point(),5);
      double stl_USDSGD_Buy  = NormalizeDouble(bid.USDSGD-TS_USDSGD*Point(),5);
      double stl_USDSGD_Sell = NormalizeDouble(ask.USDSGD+TS_USDSGD*Point(),5);
      double stl_GBPCAD_Buy  = NormalizeDouble(bid.GBPCAD-TS_GBPCAD*Point(),5);
      double stl_GBPCAD_Sell = NormalizeDouble(ask.GBPCAD+TS_GBPCAD*Point(),5);
      double stl_GBPAUD_Buy  = NormalizeDouble(bid.GBPAUD-TS_GBPAUD*Point(),5);
      double stl_GBPAUD_Sell = NormalizeDouble(ask.GBPAUD+TS_GBPAUD*Point(),5);
      double stl_EURNOK_Buy  = NormalizeDouble(bid.EURNOK-TS_EURNOK*Point(),5);
      double stl_EURNOK_Sell = NormalizeDouble(ask.EURNOK+TS_EURNOK*Point(),5);
      double stl_AUDCAD_Buy  = NormalizeDouble(bid.AUDCAD-TS_AUDCAD*Point(),5);
      double stl_AUDCAD_Sell = NormalizeDouble(ask.AUDCAD+TS_AUDCAD*Point(),5);
      double stl_GBPCHF_Buy  = NormalizeDouble(bid.GBPCHF-TS_GBPCHF*Point(),5);
      double stl_GBPCHF_Sell = NormalizeDouble(ask.GBPCHF+TS_GBPCHF*Point(),5);
      double stl_USDSEK_Buy  = NormalizeDouble(bid.USDSEK-TS_USDSEK*Point(),5);
      double stl_USDSEK_Sell = NormalizeDouble(ask.USDSEK+TS_USDSEK*Point(),5);
      double stl_USDMXN_Buy  = NormalizeDouble(bid.USDMXN-TS_USDMXN*Point(),5);
      double stl_USDMXN_Sell = NormalizeDouble(ask.USDMXN+TS_USDMXN*Point(),5);
      double stl_USDNOK_Buy  = NormalizeDouble(bid.USDNOK-TS_USDNOK*Point(),5);
      double stl_USDNOK_Sell = NormalizeDouble(ask.USDNOK+TS_USDNOK*Point(),5);
      double stl_EURSEK_Buy  = NormalizeDouble(bid.EURSEK-TS_EURSEK*Point(),5);
      double stl_EURSEK_Sell = NormalizeDouble(ask.EURSEK+TS_EURSEK*Point(),5);
      double stl_USDDKK_Buy  = NormalizeDouble(bid.USDDKK-TS_USDDKK*Point(),5);
      double stl_USDDKK_Sell = NormalizeDouble(ask.USDDKK+TS_USDDKK*Point(),5);
      double stl_USDZAR_Buy  = NormalizeDouble(bid.USDZAR-TS_USDZAR*Point(),5);
      double stl_USDZAR_Sell = NormalizeDouble(ask.USDZAR+TS_USDZAR*Point(),5);
      
  /*    
      Order_Modify_Buy(position_ticket,Symbols[i]);
      Order_Modify_Buy(ulong ticket, double SL_Symbol);
      
      MqlTradeRequest request;
      MqlTradeResult result;
      ZeroMemory(request);                  // обнуление структуры по всей видимости
      ZeroMemory(result);
      request.action = TRADE_ACTION_SLTP;   // выбор типа торговой операции
      request.position = ticket;   // тикет текущей позиции в цикле
      request.sl = SL_Symbol;          // текущая цена - пунктов - новый стоп лосс
      if(!OrderSend(request,result))       // если одер не открылся
      PrintFormat("Ошибка модификации EURRUB_BUY %d", GetLastError());
 */
//***********************************************************************
      if(((coment == "EURRUBrfd_AO_BUY")        ||
         (coment == "EURRUBrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURRUB > price1+spreadEURRUB)  &&
         (stl_EURRUB_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURRUB_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURRUB == true))
      {
         {
         ZeroMemory(request1);                  // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP;   // выбор типа торговой операции
         request1.position = position_ticket;   // тикет текущей позиции в цикле
         request1.sl = stl_EURRUB_Buy;          // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))       // если одер не открылся
         PrintFormat("Ошибка модификации EURRUB_BUY %d", GetLastError());
         }
      }
      if(((coment == "EURRUBrfd_AO_SELL")       ||
         (coment == "EURRUBrfd_NEWS_SELL"))     &&
         (ask.EURRUB < price1-spreadEURRUB)  &&
         (stl_EURRUB_Sell != sl)             &&
         (stl_EURRUB_Sell < sl)              &&
         (priceEURRUB == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURRUB_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURRUB_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "EURUSDrfd_AO_BUY")        ||
         (coment == "EURUSDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURUSD > price1+spreadEURUSD)  &&
         (stl_EURUSD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURUSD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURUSD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURUSD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "EURUSDrfd_AO_SELL")       ||
         (coment == "EURUSDrfd_NEWS_SELL"))     &&
         (ask.EURUSD < price1-spreadEURUSD)  &&
         (stl_EURUSD_Sell != sl)             &&
         (stl_EURUSD_Sell < sl)              &&
         (priceEURUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURUSD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURUSD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDRUBrfd_AO_BUY")        ||
         (coment == "USDRUBrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDRUB > price1+spreadUSDRUB)  &&
         (stl_USDRUB_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDRUB_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDRUB == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDRUB_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDRUB_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDRUBrfd_AO_SELL")       ||
         (coment == "USDRUBrfd_NEWS_SELL"))     &&
         (ask.USDRUB < price1-spreadUSDRUB)  &&
         (stl_USDRUB_Sell != sl)             &&
         (stl_USDRUB_Sell < sl)              &&
         (priceUSDRUB == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDRUB_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDRUB_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "GBPUSDrfd_AO_BUY")        ||
         (coment == "GBPUSDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.GBPUSD > price1+spreadGBPUSD)  &&
         (stl_GBPUSD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_GBPUSD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceGBPUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPUSD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPUSD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "GBPUSDrfd_AO_SELL")       ||
         (coment == "GBPUSDrfd_NEWS_SELL"))     &&
         (ask.GBPUSD < price1-spreadGBPUSD)  &&
         (stl_GBPUSD_Sell != sl)             &&
         (stl_GBPUSD_Sell < sl)              &&
         (priceGBPUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPUSD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPUSD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDJPYrfd_AO_BUY")        ||
         (coment == "USDJPYrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDJPY > price1+spreadUSDJPY)  &&
         (stl_USDJPY_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDJPY_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDJPY_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDJPY_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDJPYrfd_AO_SELL")       ||
         (coment == "USDJPYrfd_NEWS_SELL"))     &&
         (ask.USDJPY < price1-spreadUSDJPY)  &&
         (stl_USDJPY_Sell != sl)             &&
         (stl_USDJPY_Sell < sl)              &&
         (priceUSDJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDJPY_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDJPY_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDCHFrfd_AO_BUY")        ||
         (coment == "USDCHFrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDCHF > price1+spreadUSDCHF)  &&
         (stl_USDCHF_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDCHF_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDCHF == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDCHF_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDCHF_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDCHFrfd_AO_SELL")       ||
         (coment == "USDCHFrfd_NEWS_SELL"))     &&
         (ask.USDCHF < price1-spreadUSDCHF)  &&
         (stl_USDCHF_Sell != sl)             &&
         (stl_USDCHF_Sell < sl)              &&
         (priceUSDCHF == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDCHF_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDCHF_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "NZDUSDrfd_AO_BUY")        ||
         (coment == "NZDUSDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.NZDUSD > price1+spreadNZDUSD)  &&
         (stl_NZDUSD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_NZDUSD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceNZDUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_NZDUSD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации NZDUSD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "NZDUSDrfd_AO_SELL")       ||
         (coment == "NZDUSDrfd_NEWS_SELL"))     &&
         (ask.NZDUSD < price1-spreadNZDUSD)  &&
         (stl_NZDUSD_Sell != sl)             &&
         (stl_NZDUSD_Sell < sl)              &&
         (priceNZDUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_NZDUSD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации NZDUSD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDCADrfd_AO_BUY")        ||
         (coment == "USDCADrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDCAD > price1+spreadUSDCAD)  &&
         (stl_USDCAD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDCAD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDCAD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDCAD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDCAD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDCADrfd_AO_SELL")       ||
         (coment == "USDCADrfd_NEWS_SELL"))     &&
         (ask.USDCAD < price1-spreadUSDCAD)  &&
         (stl_USDCAD_Sell != sl)             &&
         (stl_USDCAD_Sell < sl)              &&
         (priceUSDCAD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDCAD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDCAD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "AUDUSDrfd_AO_BUY")        ||
         (coment == "AUDUSDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.AUDUSD > price1+spreadAUDUSD)  &&
         (stl_AUDUSD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_AUDUSD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceAUDUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDUSD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDUSD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "AUDUSDrfd_AO_SELL")       ||
         (coment == "AUDUSDrfd_NEWS_SELL"))     &&
         (ask.AUDUSD < price1-spreadAUDUSD)  &&
         (stl_AUDUSD_Sell != sl)             &&
         (stl_AUDUSD_Sell < sl)              &&
         (priceAUDUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDUSD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDUSD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "AUDNZDrfd_AO_BUY")        ||
         (coment == "AUDNZDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.AUDNZD > price1+spreadAUDNZD)  &&
         (stl_AUDNZD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_AUDNZD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceAUDNZD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDNZD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDNZD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "AUDNZDrfd_AO_SELL")       ||
         (coment == "AUDNZDrfd_NEWS_SELL"))     &&
         (ask.AUDNZD < price1-spreadAUDNZD)  &&
         (stl_AUDNZD_Sell != sl)             &&
         (stl_AUDNZD_Sell < sl)              &&
         (priceAUDNZD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDNZD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDNZD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "AUDJPYrfd_AO_BUY")        ||
         (coment == "AUDJPYrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.AUDJPY > price1+spreadAUDJPY)  &&
         (stl_AUDJPY_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_AUDJPY_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceAUDJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDJPY_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDJPY_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "AUDJPYrfd_AO_SELL")       ||
         (coment == "AUDJPYrfd_NEWS_SELL"))     &&
         (ask.AUDJPY < price1-spreadAUDJPY)  &&
         (stl_AUDJPY_Sell != sl)             &&
         (stl_AUDJPY_Sell < sl)              &&
         (priceAUDJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDJPY_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDJPY_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "AUDCHFrfd_AO_BUY")        ||
         (coment == "AUDCHFrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.AUDCHF > price1+spreadAUDCHF)  &&
         (stl_AUDCHF_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_AUDCHF_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceAUDCHF == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDCHF_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDCHF_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "AUDCHFrfd_AO_SELL")       ||
         (coment == "AUDCHFrfd_NEWS_SELL"))     &&
         (ask.AUDCHF < price1-spreadAUDCHF)  &&
         (stl_AUDCHF_Sell != sl)             &&
         (stl_AUDCHF_Sell < sl)              &&
         (priceAUDCHF == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDCHF_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDCHF_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "CHFJPYrfd_AO_BUY")        ||
         (coment == "CHFJPYrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.CHFJPY > price1+spreadCHFJPY)  &&
         (stl_CHFJPY_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_CHFJPY_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceCHFJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_CHFJPY_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации CHFJPY_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "CHFJPYrfd_AO_SELL")       ||
         (coment == "CHFJPYrfd_NEWS_SELL"))     &&
         (ask.CHFJPY < price1-spreadCHFJPY)  &&
         (stl_CHFJPY_Sell != sl)             &&
         (stl_CHFJPY_Sell < sl)              &&
         (priceCHFJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_CHFJPY_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации CHFJPY_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "GBPNZDrfd_AO_BUY")        ||
         (coment == "GBPNZDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.GBPNZD > price1+spreadGBPNZD)  &&
         (stl_GBPNZD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_GBPNZD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceGBPNZD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPNZD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPNZD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "GBPNZDrfd_AO_SELL")       ||
         (coment == "GBPNZDrfd_NEWS_SELL"))     &&
         (ask.GBPNZD < price1-spreadGBPNZD)  &&
         (stl_GBPNZD_Sell != sl)             &&
         (stl_GBPNZD_Sell < sl)              &&
         (priceGBPNZD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPNZD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPNZD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "EURAUDrfd_AO_BUY")        ||
         (coment == "EURAUDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURAUD > price1+spreadEURAUD)  &&
         (stl_EURAUD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURAUD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURAUD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURAUD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURAUD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "EURAUDrfd_AO_SELL")       ||
         (coment == "EURAUDrfd_NEWS_SELL"))     &&
         (ask.EURAUD < price1-spreadEURAUD)  &&
         (stl_EURAUD_Sell != sl)             &&
         (stl_EURAUD_Sell < sl)              &&
         (priceEURAUD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURAUD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURAUD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "EURCADrfd_AO_BUY")        ||
         (coment == "EURCADrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURCAD > price1+spreadEURCAD)  &&
         (stl_EURCAD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURCAD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURCAD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURCAD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURCAD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "EURCADrfd_AO_SELL")       ||
         (coment == "EURCADrfd_NEWS_SELL"))     &&
         (ask.EURCAD < price1-spreadEURCAD)  &&
         (stl_EURCAD_Sell != sl)             &&
         (stl_EURCAD_Sell < sl)              &&
         (priceEURCAD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURCAD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURCAD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "EURGBPrfd_AO_BUY")        ||
         (coment == "EURGBPrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURGBP > price1+spreadEURGBP)  &&
         (stl_EURGBP_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURGBP_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURGBP == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURGBP_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURGBP_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "EURGBPrfd_AO_SELL")       ||
         (coment == "EURGBPrfd_NEWS_SELL"))     &&
         (ask.EURGBP < price1-spreadEURGBP)  &&
         (stl_EURGBP_Sell != sl)             &&
         (stl_EURGBP_Sell < sl)              &&
         (priceEURGBP == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURGBP_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURGBP_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "EURJPYrfd_AO_BUY")        ||
         (coment == "EURJPYrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURJPY > price1+spreadEURJPY)  &&
         (stl_EURJPY_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURJPY_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURJPY_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURJPY_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "EURJPYrfd_AO_SELL")       ||
         (coment == "EURJPYrfd_NEWS_SELL"))     &&
         (ask.EURJPY < price1-spreadEURJPY)  &&
         (stl_EURJPY_Sell != sl)             &&
         (stl_EURJPY_Sell < sl)              &&
         (priceEURJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURJPY_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURJPY_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "EURCHFrfd_AO_BUY")        ||
         (coment == "EURCHFrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURCHF > price1+spreadEURCHF)  &&
         (stl_EURCHF_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURCHF_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURCHF == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURCHF_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURCHF_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "EURCHFrfd_AO_SELL")       ||
         (coment == "EURCHFrfd_NEWS_SELL"))     &&
         (ask.EURCHF < price1-spreadEURCHF)  &&
         (stl_EURCHF_Sell != sl)             &&
         (stl_EURCHF_Sell < sl)              &&
         (priceEURCHF == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURCHF_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURCHF_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "EURNZDrfd_AO_BUY")        ||
         (coment == "EURNZDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURNZD > price1+spreadEURNZD)  &&
         (stl_EURNZD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURNZD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURNZD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURNZD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURNZD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "EURNZDrfd_AO_SELL")       ||
         (coment == "EURNZDrfd_NEWS_SELL"))     &&
         (ask.EURNZD < price1-spreadEURNZD)  &&
         (stl_EURNZD_Sell != sl)             &&
         (stl_EURNZD_Sell < sl)              &&
         (priceEURNZD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURNZD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURNZD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "EURNOKrfd_AO_BUY")        ||
         (coment == "EURNOKrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURNOK > price1+spreadEURNOK)  &&
         (stl_EURNOK_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURNOK_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURNOK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURNOK_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURNOK_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "EURNOKrfd_AO_SELL")       ||
         (coment == "EURNOKrfd_NEWS_SELL"))     &&
         (ask.EURNOK < price1-spreadEURNOK)  &&
         (stl_EURNOK_Sell != sl)             &&
         (stl_EURNOK_Sell < sl)              &&
         (priceEURNOK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURNOK_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURNOK_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "EURSEKrfd_AO_BUY")        ||
         (coment == "EURSEKrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.EURSEK > price1+spreadEURSEK)  &&
         (stl_EURSEK_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_EURSEK_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceEURSEK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURSEK_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURSEK_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "EURSEKrfd_AO_SELL")       ||
         (coment == "EURSEKrfd_NEWS_SELL"))     &&
         (ask.EURSEK < price1-spreadEURSEK)  &&
         (stl_EURSEK_Sell != sl)             &&
         (stl_EURSEK_Sell < sl)              &&
         (priceEURSEK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_EURSEK_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации EURSEK_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "GBPAUDrfd_AO_BUY")        ||
         (coment == "GBPAUDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.GBPAUD > price1+spreadGBPAUD)  &&
         (stl_GBPAUD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_GBPAUD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceGBPAUD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPAUD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPAUD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "GBPAUDrfd_AO_SELL")       ||
         (coment == "GBPAUDrfd_NEWS_SELL"))     &&
         (ask.GBPAUD < price1-spreadGBPAUD)  &&
         (stl_GBPAUD_Sell != sl)             &&
         (stl_GBPAUD_Sell < sl)              &&
         (priceGBPAUD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPAUD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPAUD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "GBPCADrfd_AO_BUY")        ||
         (coment == "GBPCADrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.GBPCAD > price1+spreadGBPCAD)  &&
         (stl_GBPCAD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_GBPCAD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceGBPCAD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPCAD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPCAD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "GBPCADrfd_AO_SELL")       ||
         (coment == "GBPCADrfd_NEWS_SELL"))     &&
         (ask.GBPCAD < price1-spreadGBPCAD)  &&
         (stl_GBPCAD_Sell != sl)             &&
         (stl_GBPCAD_Sell < sl)              &&
         (priceGBPCAD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPCAD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPCAD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "AUDCADrfd_AO_BUY")        ||
         (coment == "AUDCADrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.AUDCAD > price1+spreadAUDCAD)  &&
         (stl_AUDCAD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_AUDCAD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceAUDCAD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDCAD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDCAD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "AUDCADrfd_AO_SELL")       ||
         (coment == "AUDCADrfd_NEWS_SELL"))     &&
         (ask.AUDCAD < price1-spreadAUDCAD)  &&
         (stl_AUDCAD_Sell != sl)             &&
         (stl_AUDCAD_Sell < sl)              &&
         (priceAUDCAD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_AUDCAD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации AUDCAD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "GBPCHFrfd_AO_BUY")        ||
         (coment == "GBPCHFrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.GBPCHF > price1+spreadGBPCHF)  &&
         (stl_GBPCHF_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_GBPCHF_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceGBPCHF == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPCHF_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPCHF_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "GBPCHFrfd_AO_SELL")       ||
         (coment == "GBPCHFrfd_NEWS_SELL"))     &&
         (ask.GBPCHF < price1-spreadGBPCHF)  &&
         (stl_GBPCHF_Sell != sl)             &&
         (stl_GBPCHF_Sell < sl)              &&
         (priceGBPCHF == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPCHF_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPCHF_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "GBPJPYrfd_AO_BUY")        ||
         (coment == "GBPJPYrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.GBPJPY > price1+spreadGBPJPY)  &&
         (stl_GBPJPY_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_GBPJPY_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceGBPJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPJPY_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPJPY_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "GBPJPYrfd_AO_SELL")       ||
         (coment == "GBPJPYrfd_NEWS_SELL"))     &&
         (ask.GBPJPY < price1-spreadGBPJPY)  &&
         (stl_GBPJPY_Sell != sl)             &&
         (stl_GBPJPY_Sell < sl)              &&
         (priceGBPJPY == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_GBPJPY_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации GBPJPY_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDSEKrfd_AO_BUY")        ||
         (coment == "USDSEKrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDSEK > price1+spreadUSDSEK)  &&
         (stl_USDSEK_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDSEK_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDSEK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDSEK_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDSEK_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDSEKrfd_AO_SELL")       ||
         (coment == "USDSEKrfd_NEWS_SELL"))     &&
         (ask.USDSEK < price1-spreadUSDSEK)  &&
         (stl_USDSEK_Sell != sl)             &&
         (stl_USDSEK_Sell < sl)              &&
         (priceUSDSEK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDSEK_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDSEK_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDDKKrfd_AO_BUY")        ||
         (coment == "USDDKKrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDDKK > price1+spreadUSDDKK)  &&
         (stl_USDDKK_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDDKK_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDDKK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDDKK_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDDKK_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDDKKrfd_AO_SELL")       ||
         (coment == "USDDKKrfd_NEWS_SELL"))     &&
         (ask.USDDKK < price1-spreadUSDDKK)  &&
         (stl_USDDKK_Sell != sl)             &&
         (stl_USDDKK_Sell < sl)              &&
         (priceUSDDKK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDDKK_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDDKK_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDNOKrfd_AO_BUY")        ||
         (coment == "USDNOKrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDNOK > price1+spreadUSDNOK)  &&
         (stl_USDNOK_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDNOK_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDNOK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDNOK_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDNOK_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDNOKrfd_AO_SELL")       ||
         (coment == "USDNOKrfd_NEWS_SELL"))     &&
         (ask.USDNOK < price1-spreadUSDNOK)  &&
         (stl_USDNOK_Sell != sl)             &&
         (stl_USDNOK_Sell < sl)              &&
         (priceUSDNOK == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDNOK_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDNOK_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDSGDrfd_AO_BUY")        ||
         (coment == "USDSGDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDSGD > price1+spreadUSDSGD)  &&
         (stl_USDSGD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDSGD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDSGD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDSGD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDSGD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDSGDrfd_AO_SELL")       ||
         (coment == "USDSGDrfd_NEWS_SELL"))     &&
         (ask.USDSGD < price1-spreadUSDSGD)  &&
         (stl_USDSGD_Sell != sl)             &&
         (stl_USDSGD_Sell < sl)              &&
         (priceUSDSGD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDSGD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDSGD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDZARrfd_AO_BUY")        ||
         (coment == "USDZARrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDZAR > price1+spreadUSDZAR)  &&
         (stl_USDZAR_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDZAR_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDZAR == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDZAR_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDZAR_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDZARrfd_AO_SELL")       ||
         (coment == "USDZARrfd_NEWS_SELL"))     &&
         (ask.USDZAR < price1-spreadUSDZAR)  &&
         (stl_USDZAR_Sell != sl)             &&
         (stl_USDZAR_Sell < sl)              &&
         (priceUSDZAR == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDZAR_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDZAR_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "USDMXNrfd_AO_BUY")        ||
         (coment == "USDMXNrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.USDMXN > price1+spreadUSDMXN)  &&
         (stl_USDMXN_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_USDMXN_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceUSDMXN == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDMXN_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDMXN_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "USDMXNrfd_AO_SELL")       ||
         (coment == "USDMXNrfd_NEWS_SELL"))     &&
         (ask.USDMXN < price1-spreadUSDMXN)  &&
         (stl_USDMXN_Sell != sl)             &&
         (stl_USDMXN_Sell < sl)              &&
         (priceUSDMXN == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_USDMXN_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации USDMXN_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "XAUUSDrfd_AO_BUY")        ||
         (coment == "XAUUSDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.XAUUSD > price1+spreadXAUUSD)  &&
         (stl_XAUUSD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_XAUUSD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceXAUUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_XAUUSD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации XAUUSD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "XAUUSDrfd_AO_SELL")       ||
         (coment == "XAUUSDrfd_NEWS_SELL"))     &&
         (ask.XAUUSD < price1-spreadXAUUSD)  &&
         (stl_XAUUSD_Sell != sl)             &&
         (stl_XAUUSD_Sell < sl)              &&
         (priceXAUUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_XAUUSD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации XAUUSD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
//***********************************************************************
      if(((coment == "XAGUSDrfd_AO_BUY")        ||
         (coment == "XAGUSDrfd_NEWS_BUY"))      && // тип ордера SELL или BAY // 
         (bid.XAGUSD > price1+spreadXAGUSD)  &&
         (stl_XAGUSD_Buy != sl)              && // новый стоп лосс не равен старому стоп лоссу
         (stl_XAGUSD_Buy > sl)               && // новый стоп лосс больше старого стоп лосса
         (priceXAGUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_XAGUSD_Buy; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации XAGUSD_BUY %d", GetLastError());   // обрабатываем ошибку
         }
      }
      if(((coment == "XAGUSDrfd_AO_SELL")       ||
         (coment == "XAGUSDrfd_NEWS_SELL"))     &&
         (ask.XAGUSD < price1-spreadXAGUSD)  &&
         (stl_XAGUSD_Sell != sl)             &&
         (stl_XAGUSD_Sell < sl)              &&
         (priceXAGUSD == true))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl_XAGUSD_Sell; // текущая цена - пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации XAGUSD_SELL %d", GetLastError());   // обрабатываем ошибку
         }
      }
       
   }
};