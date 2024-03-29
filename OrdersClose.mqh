void OrdersClose()
{
   MqlTradeRequest request1;
   MqlTradeResult result1;
   int total1=PositionsTotal();
   //Print("Всего действующих ордеров - ",total1);
   for(int i=0;i<total1;i++)
   {
      ulong position_ticket = PositionGetTicket(i); // тикет позиции
      ENUM_POSITION_TYPE type=(ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);  // тип позиции
      string coment = PositionGetString(POSITION_COMMENT);
      
      double price1 = PositionGetDouble(POSITION_PRICE_OPEN);        // цена открытия ордера
      double volume = PositionGetDouble(POSITION_VOLUME);
      
      if((coment == "RUB") && (type == POSITION_TYPE_BUY))
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_CLOSE_BY; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.position_by = PositionGetInteger(POSITION_TICKET);
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Error close order %d", GetLastError());   // обрабатываем ошибку
         }
      }
   }
}