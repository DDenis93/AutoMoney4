//+------------------------------------------------------------------+
//| проверяет - можно ли выставить еще один ордер                    |
//+------------------------------------------------------------------+
bool IsNewOrderAllowed()
  {
//--- получим количество разрешенных на счете отложенных ордеров
   int max_allowed_orders=(int)AccountInfoInteger(ACCOUNT_LIMIT_ORDERS);

//--- если ограничения нет - вернем true, можно отослать ордер
   if(max_allowed_orders==0) return(true);

//--- если дошли до этого места, значит ограничение есть, узнаем, сколько уже ордеров действует
   int orders=OrdersTotal();

//--- вернем результат сравнения
   return(orders<max_allowed_orders);
  }