bool TimeServer()
{
if((RealTimeMonth == "11") || (RealTimeMonth == "12") || (RealTimeMonth == "01") || (RealTimeMonth == "02") || (RealTimeMonth == "03"))
   {//Print("Зимнее время");
   TimePeriod = 1;}
else
   {//Print("Летнее время");
   TimePeriod = 2;}

   if((TimePeriod == 1) && (RealTimeHor == "16") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
        } 

   if((TimePeriod == 2) && (RealTimeHor == "15") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
        } 
        
   /* if((RealTimeMinut == "13") ||
       (RealTimeMinut == "28") ||
       (RealTimeMinut == "43") ||
       (RealTimeMinut == "58"))
      {OrdersModifyPerspective();}
      */
if((RealTimeMinut != "14") &&
   (RealTimeMinut != "29") &&
   (RealTimeMinut != "44") &&
   (RealTimeMinut != "59") && (count == false))
      {count = true;
       b = false;
       //Print("Только модификация");
      }

return(b);
};