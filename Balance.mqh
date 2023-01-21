bool Balance()
{
   bool a = false; // 
   RealFreeBalance = AccountInfoDouble(ACCOUNT_EQUITY); // текущие свободные средства
   //Print("Свободные средства: ",RealFreeBalance);
   //Print("Средств на счёте: ",AccountInfoDouble(ACCOUNT_EQUITY)," RUB."); // средства на счете в валюте депозита
   //Print("Текущая приыль: ",AccountInfoDouble(ACCOUNT_PROFIT), " RUB."); // текущая прибыль
   double RealPrice = iHigh(Symbol(),PERIOD_M1,0); // текущая цена рубль//доллар
   double RealZalog = NormalizeDouble(RealPrice*1000/AccountInfoInteger(ACCOUNT_LEVERAGE),2); // AccountInfoInteger(ACCOUNT_LEVERAGE)
   // текущий залог в рублях, нормализованный
   //Print("Маржа = ",RealZalogRub);
   if(RealFreeBalance > RealZalog) // если свободный баланс больше суммы залога, то
   {
      //Print("Balance ok, open order");
      a = true;
      //lot = 0.50;//NormalizeDouble((RealFreeBalance/RealZalog)/100-0.01,2);
      // фиксированный лот в данный момент
      //Print("Max lot = ",lot);
   }
   
   //*********************************************************** из github
   //Print("Брокер: ",AccountInfoString(ACCOUNT_COMPANY));
   //Print("Пользователь: ",AccountInfoString(ACCOUNT_NAME));
   //Print("Номер счета: ",AccountInfoInteger(ACCOUNT_LOGIN));
   CreditPlecho = ACCOUNT_LEVERAGE;
   //Print("Кредитное плечо: ",CreditPlecho);
   //Print("Максимальное количество отложенных ордеров ",ACCOUNT_LIMIT_ORDERS);
   balance = AccountInfoDouble(ACCOUNT_BALANCE);
   //Print("Текущая прибыль: ",AccountInfoDouble(ACCOUNT_PROFIT), " руб.");
   //Print("Собственные средства: ",AccountInfoDouble(ACCOUNT_EQUITY)," руб.");
   //Print("Размер залога по сделкам: ",AccountInfoDouble(ACCOUNT_MARGIN)," руб.");
   balanceFreeMargin = AccountInfoDouble(ACCOUNT_MARGIN_FREE);
   //Print("Средства доступные для открытия сделок: ",balanceFreeMargin," руб.");
   //SendNotification("Эксперт инициализирован"); // PUSH уведомление на телефон
return(a);
};