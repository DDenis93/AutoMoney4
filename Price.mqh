void Price(){

   MqlTick price;
   if((SymbolInfoTick("XAUUSDrfd",price)==true) && (XAUUSD == true))
   {bid.XAUUSD = price.bid;
    ask.XAUUSD = price.ask;
    maxAO.XAUUSD = NormalizeDouble(iHigh("XAUUSDrfd",PERIOD(),1),4);
    minAO.XAUUSD = NormalizeDouble(iLow("XAUUSDrfd",PERIOD(),1),4);
    priceXAUUSD = true;
    OpenOrderPriceXAUUSD = true;
    spreadXAUUSD = NormalizeDouble(ask.XAUUSD-bid.XAUUSD,2);
    //Print("Спред XAUUSD = ",spreadXAUUSD);
    }
   else
   {//Print("Нет Цен - XAUUSD");
    priceXAUUSD = false;
    }
//*************************************************
   if((SymbolInfoTick("AUDJPYrfd",price)==true) && (AUDJPY == true))
   {bid.AUDJPY = price.bid;
    ask.AUDJPY = price.ask;
    maxAO.AUDJPY = NormalizeDouble(iHigh("AUDJPYrfd",PERIOD(),1),4);
    minAO.AUDJPY = NormalizeDouble(iLow("AUDJPYrfd",PERIOD(),1),4);
    priceAUDJPY = true;
    OpenOrderPriceAUDJPY = true;
    spreadAUDJPY = NormalizeDouble(ask.AUDJPY-bid.AUDJPY,3);
    //Print("Спред AUDJPY = ",spreadAUDJPY);
    }
   else
   {//Print("Нет Цен - AUDJPY");
    priceAUDJPY = false;}
//************************************************* 
   if((SymbolInfoTick("USDJPYrfd",price)==true) && (USDJPY == true))
   {bid.USDJPY = price.bid;
    ask.USDJPY = price.ask;
    maxAO.USDJPY = NormalizeDouble(iHigh("USDJPYrfd",PERIOD(),1),4);
    minAO.USDJPY = NormalizeDouble(iLow("USDJPYrfd",PERIOD(),1),4);
    priceUSDJPY = true;
    OpenOrderPriceUSDJPY = true;
    spreadUSDJPY = NormalizeDouble(ask.USDJPY-bid.USDJPY,3);
    //Print("Спред USDJPY = ",spreadUSDJPY);
    }
   else
   {//Print("Нет Цен - USDJPY");
    priceUSDJPY = false;}
//*************************************************
   if((SymbolInfoTick("EURJPYrfd",price)==true) && (EURJPY == true))
   {bid.EURJPY = price.bid;
    ask.EURJPY = price.ask;
    maxAO.EURJPY = NormalizeDouble(iHigh("EURJPYrfd",PERIOD(),1),4);
    minAO.EURJPY = NormalizeDouble(iLow("EURJPYrfd",PERIOD(),1),4);
    priceEURJPY = true;
    OpenOrderPriceEURJPY = true;
    spreadEURJPY = NormalizeDouble(ask.EURJPY-bid.EURJPY,3);
    //Print("Спред EURJPY = ",spreadEURJPY);
    }
   else
   {//Print("Нет Цен - EURJPY");
    priceEURJPY = false;}
//*************************************************
   if((SymbolInfoTick("CHFJPYrfd",price)==true) && (CHFJPY == true))
   {bid.CHFJPY = price.bid;
    ask.CHFJPY = price.ask;
    maxAO.CHFJPY = NormalizeDouble(iHigh("CHFJPYrfd",PERIOD(),1),4);
    minAO.CHFJPY = NormalizeDouble(iLow("CHFJPYrfd",PERIOD(),1),4);
    priceCHFJPY = true;
    OpenOrderPriceCHFJPY = true;
    spreadCHFJPY = NormalizeDouble(ask.CHFJPY-bid.CHFJPY,3);
    //Print("Спред CHFJPY = ",spreadCHFJPY);
    }
   else
   {//Print("Нет Цен - CHFJPY");
    priceCHFJPY = false;}
//*************************************************
   if((SymbolInfoTick("GBPJPYrfd",price)==true) && (GBPJPY == true))
   {bid.GBPJPY = price.bid;
    ask.GBPJPY = price.ask;
    maxAO.GBPJPY = NormalizeDouble(iHigh("GBPJPYrfd",PERIOD(),1),4);
    minAO.GBPJPY = NormalizeDouble(iLow("GBPJPYrfd",PERIOD(),1),4);
    priceGBPJPY = true;
    OpenOrderPriceGBPJPY = true;
    spreadGBPJPY = NormalizeDouble(ask.GBPJPY-bid.GBPJPY,3);
    //Print("Спред GBPJPY = ",spreadGBPJPY);
    }
   else
   {//Print("Нет Цен - GBPJPY");
    priceGBPJPY = false;}
//************************************************* 
    if((SymbolInfoTick("EURRUBrfd",price)==true) && (EURRUB == true))
   {bid.EURRUB = price.bid;
    ask.EURRUB = price.ask;
    maxAO.EURRUB = NormalizeDouble(iHigh("EURRUBrfd",PERIOD(),1),4);
    minAO.EURRUB = NormalizeDouble(iLow("EURRUBrfd",PERIOD(),1),4);
    priceEURRUB = true;
    OpenOrderPriceEURRUB = true;
    spreadEURRUB = NormalizeDouble(ask.EURRUB-bid.EURRUB,4);
    //Print("Спред EURRUB = ",spreadEURRUB);
    }
   else
   {//Print("Нет Цен - EURRUB");
    priceEURRUB = false;}
//*************************************************
   if((SymbolInfoTick("USDRUBrfd",price)==true) && (USDRUB == true))
   {bid.USDRUB = price.bid;
    ask.USDRUB = price.ask;
    maxAO.USDRUB = NormalizeDouble(iHigh("USDRUBrfd",PERIOD(),1),4);
    minAO.USDRUB = NormalizeDouble(iLow("USDRUBrfd",PERIOD(),1),4);
    priceUSDRUB = true;
    OpenOrderPriceUSDRUB = true;
    spreadUSDRUB = NormalizeDouble(ask.USDRUB-bid.USDRUB,4);
    //Print("Спред USDRUB = ",spreadUSDRUB);
    }
   else
   {//Print("Нет Цен - USDRUB");
    priceUSDRUB = false;}
//*************************************************
   if((SymbolInfoTick("XAGUSDrfd",price)==true) && (XAGUSD == true))
   {bid.XAGUSD = price.bid;
    ask.XAGUSD = price.ask;
    maxAO.XAGUSD = NormalizeDouble(iHigh("XAGUSDrfd",PERIOD(),1),4);
    minAO.XAGUSD = NormalizeDouble(iLow("XAGUSDrfd",PERIOD(),1),4);
    priceXAGUSD = true;
    OpenOrderPriceXAGUSD = true;
    spreadXAGUSD = NormalizeDouble(ask.XAGUSD-bid.XAGUSD,4);
    //Print("Спред XAGUSD = ",spreadXAGUSD);
    }
   else
   {//Print("Нет Цен - XAGUSD");
    priceXAGUSD = false;}
//*************************************************
    if((SymbolInfoTick("EURUSDrfd",price)==true) && (EURUSD == true))
   {bid.EURUSD = price.bid;
    ask.EURUSD = price.ask;
    maxAO.EURUSD = NormalizeDouble(iHigh("EURUSDrfd",PERIOD(),1),4);
    minAO.EURUSD = NormalizeDouble(iLow("EURUSDrfd",PERIOD(),1),4);
    priceEURUSD = true;
    OpenOrderPriceEURUSD = true;
    spreadEURUSD = NormalizeDouble(ask.EURUSD-bid.EURUSD,5);
    //Print("Спред EURUSD = ",spreadEURUSD);
    }
   else
   {//Print("Нет Цен - EURUSD");
    priceEURUSD = false;}
//*************************************************    
    if((SymbolInfoTick("GBPUSDrfd",price)==true) && (GBPUSD == true))
   {bid.GBPUSD = price.bid;
    ask.GBPUSD = price.ask;
    maxAO.GBPUSD = NormalizeDouble(iHigh("GBPUSDrfd",PERIOD(),1),4);
    minAO.GBPUSD = NormalizeDouble(iLow("GBPUSDrfd",PERIOD(),1),4);
    priceGBPUSD = true;
    OpenOrderPriceGBPUSD = true;
    spreadGBPUSD = NormalizeDouble(ask.GBPUSD-bid.GBPUSD,5);
    //Print("Спред GBPUSD = ",spreadGBPUSD);
    }
   else
   {//Print("Нет Цен - GBPUSD");
    priceGBPUSD = false;}
//*************************************************    
    if((SymbolInfoTick("USDCHFrfd",price)==true) && (USDCHF == true))
   {bid.USDCHF = price.bid;
    ask.USDCHF = price.ask;
    maxAO.USDCHF = NormalizeDouble(iHigh("USDCHFrfd",PERIOD(),1),4);
    minAO.USDCHF = NormalizeDouble(iLow("USDCHFrfd",PERIOD(),1),4);
    priceUSDCHF = true;
    OpenOrderPriceUSDCHF = true;
    spreadUSDCHF = NormalizeDouble(ask.USDCHF-bid.USDCHF,5);
    //Print("Спред USDCHF = ",spreadUSDCHF);
    }
   else
   {//Print("Нет Цен - USDCHF");
    priceUSDCHF = false;}
//*************************************************    
    if((SymbolInfoTick("NZDUSDrfd",price)==true) && (NZDUSD == true))
   {bid.NZDUSD = price.bid;
    ask.NZDUSD = price.ask;
    maxAO.NZDUSD = NormalizeDouble(iHigh("NZDUSDrfd",PERIOD(),1),4);
    minAO.NZDUSD = NormalizeDouble(iLow("NZDUSDrfd",PERIOD(),1),4);
    priceNZDUSD = true;
    OpenOrderPriceNZDUSD = true;
    spreadNZDUSD = NormalizeDouble(ask.NZDUSD-bid.NZDUSD,5);
    //Print("Спред NZDUSD = ",spreadNZDUSD);
    }
   else
   {//Print("Нет Цен - NZDUSD");
    priceNZDUSD = false;}
//*************************************************    
    if((SymbolInfoTick("USDCADrfd",price)==true) && (USDCAD == true))
   {bid.USDCAD = price.bid;
    ask.USDCAD = price.ask;
    maxAO.USDCAD = NormalizeDouble(iHigh("USDCADrfd",PERIOD(),1),4);
    minAO.USDCAD = NormalizeDouble(iLow("USDCADrfd",PERIOD(),1),4);
    priceUSDCAD = true;
    OpenOrderPriceUSDCAD = true;
    spreadUSDCAD = NormalizeDouble(ask.USDCAD-bid.USDCAD,5);
    //Print("Спред USDCAD = ",spreadUSDCAD);
    }
   else
   {//Print("Нет Цен - USDCAD");
    priceUSDCAD = false;}
//*************************************************    
    if((SymbolInfoTick("AUDUSDrfd",price)==true) && (AUDUSD == true))
   {bid.AUDUSD = price.bid;
    ask.AUDUSD = price.ask;
    maxAO.AUDUSD = NormalizeDouble(iHigh("AUDUSDrfd",PERIOD(),1),4);
    minAO.AUDUSD = NormalizeDouble(iLow("AUDUSDrfd",PERIOD(),1),4);
    priceAUDUSD = true;
    OpenOrderPriceAUDUSD = true;
    spreadAUDUSD = NormalizeDouble(ask.AUDUSD-bid.AUDUSD,5);
    //Print("Спред AUDUSD = ",spreadAUDUSD);
    }
   else
   {//Print("Нет Цен - AUDUSD");
    priceAUDUSD = false;}
//*************************************************    
    if((SymbolInfoTick("AUDNZDrfd",price)==true) && (AUDNZD == true))
   {bid.AUDNZD = price.bid;
    ask.AUDNZD = price.ask;
    maxAO.AUDNZD = NormalizeDouble(iHigh("AUDNZDrfd",PERIOD(),1),4);
    minAO.AUDNZD = NormalizeDouble(iLow("AUDNZDrfd",PERIOD(),1),4);
    priceAUDNZD = true;
    OpenOrderPriceAUDNZD = true;
    spreadAUDNZD = NormalizeDouble(ask.AUDNZD-bid.AUDNZD,5);
    //Print("Спред AUDNZD = ",spreadAUDNZD);
    }
   else
   {//Print("Нет Цен - AUDNZD");
    priceAUDNZD = false;}
//*************************************************    
    if((SymbolInfoTick("AUDCHFrfd",price)==true) && (AUDCHF == true))
   {bid.AUDCHF = price.bid;
    ask.AUDCHF = price.ask;
    maxAO.AUDCHF = NormalizeDouble(iHigh("AUDCHFrfd",PERIOD(),1),4);
    minAO.AUDCHF = NormalizeDouble(iLow("AUDCHFrfd",PERIOD(),1),4);
    priceAUDCHF = true;
    OpenOrderPriceAUDCHF = true;
    spreadAUDCHF = NormalizeDouble(ask.AUDCHF-bid.AUDCHF,5);
    //Print("Спред AUDCHF = ",spreadAUDCHF);
    }
   else
   {//Print("Нет Цен - AUDCHF");
    priceAUDCHF = false;}
//*************************************************    
    if((SymbolInfoTick("GBPNZDrfd",price)==true) && (GBPNZD == true))
   {bid.GBPNZD = price.bid;
    ask.GBPNZD = price.ask;
    maxAO.GBPNZD = NormalizeDouble(iHigh("GBPNZDrfd",PERIOD(),1),4);
    minAO.GBPNZD = NormalizeDouble(iLow("GBPNZDrfd",PERIOD(),1),4);
    priceGBPNZD = true;
    OpenOrderPriceGBPNZD = true;
    spreadGBPNZD = NormalizeDouble(ask.GBPNZD-bid.GBPNZD,5);
    //Print("Спред GBPNZD = ",spreadGBPNZD);
    }
   else
   {//Print("Нет Цен - GBPNZD");
    priceGBPNZD = false;}
//*************************************************    
    if((SymbolInfoTick("EURAUDrfd",price)==true) && (EURAUD == true))
   {bid.EURAUD = price.bid;
    ask.EURAUD = price.ask;
    maxAO.EURAUD = NormalizeDouble(iHigh("EURAUDrfd",PERIOD(),1),4);
    minAO.EURAUD = NormalizeDouble(iLow("EURAUDrfd",PERIOD(),1),4);
    priceEURAUD = true;
    OpenOrderPriceEURAUD = true;
    spreadEURAUD = NormalizeDouble(ask.EURAUD-bid.EURAUD,5);
    //Print("Спред EURAUD = ",spreadEURAUD);
    }
   else
   {//Print("Нет Цен - EURAUD");
    priceEURAUD = false;}
//*************************************************    
    if((SymbolInfoTick("EURCADrfd",price)==true) && (EURCAD == true))
   {bid.EURCAD = price.bid;
    ask.EURCAD = price.ask;
    maxAO.EURCAD = NormalizeDouble(iHigh("EURCADrfd",PERIOD(),1),4);
    minAO.EURCAD = NormalizeDouble(iLow("EURCADrfd",PERIOD(),1),4);
    priceEURCAD = true;
    OpenOrderPriceEURCAD = true;
    spreadEURCAD = NormalizeDouble(ask.EURCAD-bid.EURCAD,5);
    //Print("Спред EURCAD = ",spreadEURCAD);
    }
   else
   {//Print("Нет Цен - EURCAD");
    priceEURCAD = false;}
//*************************************************    
    if((SymbolInfoTick("EURGBPrfd",price)==true) && (EURGBP == true))
   {bid.EURGBP = price.bid;
    ask.EURGBP = price.ask;
    maxAO.EURGBP = NormalizeDouble(iHigh("EURGBPrfd",PERIOD(),1),4);
    minAO.EURGBP = NormalizeDouble(iLow("EURGBPrfd",PERIOD(),1),4);
    priceEURGBP = true;
    OpenOrderPriceEURGBP = true;
    spreadEURGBP = NormalizeDouble(ask.EURGBP-bid.EURGBP,5);
    //Print("Спред EURGBP = ",spreadEURGBP);
    }
   else
   {//Print("Нет Цен - EURGBP");
    priceEURGBP = false;}
//*************************************************    
    if((SymbolInfoTick("EURCHFrfd",price)==true) && (EURCHF == true))
   {bid.EURCHF = price.bid;
    ask.EURCHF = price.ask;
    maxAO.EURCHF = NormalizeDouble(iHigh("EURCHFrfd",PERIOD(),1),4);
    minAO.EURCHF = NormalizeDouble(iLow("EURCHFrfd",PERIOD(),1),4);
    priceEURCHF = true;
    OpenOrderPriceEURCHF = true;
    spreadEURCHF = NormalizeDouble(ask.EURCHF-bid.EURCHF,5);
    //Print("Спред EURCHF = ",spreadEURCHF);
    }
   else
   {//Print("Нет Цен - EURCHF");
    priceEURCHF = false;}
//*************************************************    
    if((SymbolInfoTick("EURNZDrfd",price)==true) && (EURNZD == true))
   {bid.EURNZD = price.bid;
    ask.EURNZD = price.ask;
    maxAO.EURNZD = NormalizeDouble(iHigh("EURNZDrfd",PERIOD(),1),4);
    minAO.EURNZD = NormalizeDouble(iLow("EURNZDrfd",PERIOD(),1),4);
    priceEURNZD = true;
    OpenOrderPriceEURNZD = true;
    spreadEURNZD = NormalizeDouble(ask.EURNZD-bid.EURNZD,5);
    //Print("Спред EURNZD = ",spreadEURNZD);
    }
   else
   {//Print("Нет Цен - EURNZD");
    priceEURNZD = false;}
//*************************************************    
    if((SymbolInfoTick("EURNOKrfd",price)==true) && (EURNOK == true))
   {bid.EURNOK = price.bid;
    ask.EURNOK = price.ask;
    maxAO.EURNOK = NormalizeDouble(iHigh("EURNOKrfd",PERIOD(),1),4);
    minAO.EURNOK = NormalizeDouble(iLow("EURNOKrfd",PERIOD(),1),4);
    priceEURNOK = true;
    OpenOrderPriceEURNOK = true;
    spreadEURNOK = NormalizeDouble(ask.EURNOK-bid.EURNOK,5);
    //Print("Спред EURNOK = ",spreadEURNOK);
    }
   else
   {//Print("Нет Цен - EURNOK");
    priceEURNOK = false;}
//*************************************************    
    if((SymbolInfoTick("EURSEKrfd",price)==true) && (EURSEK == true))
   {bid.EURSEK = price.bid;
    ask.EURSEK = price.ask;
    maxAO.EURSEK = NormalizeDouble(iHigh("EURSEKrfd",PERIOD(),1),4);
    minAO.EURSEK = NormalizeDouble(iLow("EURSEKrfd",PERIOD(),1),4);
    priceEURSEK = true;
    OpenOrderPriceEURSEK = true;
    spreadEURSEK = NormalizeDouble(ask.EURSEK-bid.EURSEK,5);
    //Print("Спред EURSEK = ",spreadEURSEK);
    }
   else
   {//Print("Нет Цен - EURSEK");
    priceEURSEK = false;}
//*************************************************    
    if((SymbolInfoTick("GBPAUDrfd",price)==true) && (GBPAUD == true))
   {bid.GBPAUD = price.bid;
    ask.GBPAUD = price.ask;
    maxAO.GBPAUD = NormalizeDouble(iHigh("GBPAUDrfd",PERIOD(),1),4);
    minAO.GBPAUD = NormalizeDouble(iLow("GBPAUDrfd",PERIOD(),1),4);
    priceGBPAUD = true;
    OpenOrderPriceGBPAUD = true;
    spreadGBPAUD = NormalizeDouble(ask.GBPAUD-bid.GBPAUD,5);
    //Print("Спред GBPAUD = ",spreadGBPAUD);
    }
   else
   {//Print("Нет Цен - GBPAUD");
    priceGBPAUD = false;}
//*************************************************    
    if((SymbolInfoTick("GBPCADrfd",price)==true) && (GBPCAD == true))
   {bid.GBPCAD = price.bid;
    ask.GBPCAD = price.ask;
    maxAO.GBPCAD = NormalizeDouble(iHigh("GBPCADrfd",PERIOD(),1),4);
    minAO.GBPCAD = NormalizeDouble(iLow("GBPCADrfd",PERIOD(),1),4);
    priceGBPCAD = true;
    OpenOrderPriceGBPCAD = true;
    spreadGBPCAD = NormalizeDouble(ask.GBPCAD-bid.GBPCAD,5);
    //Print("Спред GBPCAD = ",spreadGBPCAD);
    }
   else
   {//Print("Нет Цен - GBPCAD");
    priceGBPCAD = false;}
//*************************************************    
    if((SymbolInfoTick("AUDCADrfd",price)==true) && (AUDCAD == true))
   {bid.AUDCAD = price.bid;
    ask.AUDCAD = price.ask;
    maxAO.AUDCAD = NormalizeDouble(iHigh("AUDCADrfd",PERIOD(),1),4);
    minAO.AUDCAD = NormalizeDouble(iLow("AUDCADrfd",PERIOD(),1),4);
    priceAUDCAD = true;
    OpenOrderPriceAUDCAD = true;
    spreadAUDCAD = NormalizeDouble(ask.AUDCAD-bid.AUDCAD,5);
    //Print("Спред AUDCAD = ",spreadAUDCAD);
    }
   else
   {//Print("Нет Цен - AUDCAD");
    priceAUDCAD = false;}
//*************************************************    
    if((SymbolInfoTick("GBPCHFrfd",price)==true) && (GBPCHF == true))
   {bid.GBPCHF = price.bid;
    ask.GBPCHF = price.ask;
    maxAO.GBPCHF = NormalizeDouble(iHigh("GBPCHFrfd",PERIOD(),1),4);
    minAO.GBPCHF = NormalizeDouble(iLow("GBPCHFrfd",PERIOD(),1),4);
    priceGBPCHF = true;
    OpenOrderPriceGBPCHF = true;
    spreadGBPCHF = NormalizeDouble(ask.GBPCHF-bid.GBPCHF,5);
    //Print("Спред GBPCHF = ",spreadGBPCHF);
    }
   else
   {//Print("Нет Цен - GBPCHF");
    priceGBPCHF = false;}
//*************************************************
    if((SymbolInfoTick("USDSEKrfd",price)==true) && (USDSEK == true))
   {bid.USDSEK = price.bid;
    ask.USDSEK = price.ask;
    maxAO.USDSEK = NormalizeDouble(iHigh("USDSEKrfd",PERIOD(),1),4);
    minAO.USDSEK = NormalizeDouble(iLow("USDSEKrfd",PERIOD(),1),4);
    priceUSDSEK = true;
    OpenOrderPriceUSDSEK = true;
    spreadUSDSEK = NormalizeDouble(ask.USDSEK-bid.USDSEK,5);
    //Print("Спред USDSEK = ",spreadUSDSEK);
    }
   else
   {//Print("Нет Цен - USDSEK");
    priceUSDSEK = false;}
//*************************************************
    if((SymbolInfoTick("USDDKKrfd",price)==true) && (USDDKK == true))
   {bid.USDDKK = price.bid;
    ask.USDDKK = price.ask;
    maxAO.USDDKK = NormalizeDouble(iHigh("USDDKKrfd",PERIOD(),1),4);
    minAO.USDDKK = NormalizeDouble(iLow("USDDKKrfd",PERIOD(),1),4);
    priceUSDDKK = true;
    OpenOrderPriceUSDDKK = true;
    spreadUSDDKK = NormalizeDouble(ask.USDDKK-bid.USDDKK,5);
    //Print("Спред USDDKK = ",spreadUSDDKK);
    }
   else
   {//Print("Нет Цен - USDDKK");
    priceUSDDKK = false;}
//*************************************************    
    if((SymbolInfoTick("USDNOKrfd",price)==true) && (USDNOK == true))
   {bid.USDNOK = price.bid;
    ask.USDNOK = price.ask;
    maxAO.USDNOK = NormalizeDouble(iHigh("USDNOKrfd",PERIOD(),1),4);
    minAO.USDNOK = NormalizeDouble(iLow("USDNOKrfd",PERIOD(),1),4);
    priceUSDNOK = true;
    OpenOrderPriceUSDNOK = true;
    spreadUSDNOK = NormalizeDouble(ask.USDNOK-bid.USDNOK,5);
    //Print("Спред USDNOK = ",spreadUSDNOK);
    }
   else
   {//Print("Нет Цен - USDNOK");
    priceUSDNOK = false;}
//*************************************************    
    if((SymbolInfoTick("USDSGDrfd",price)==true) && (USDSGD == true))
   {bid.USDSGD = price.bid;
    ask.USDSGD = price.ask;
    maxAO.USDSGD = NormalizeDouble(iHigh("USDSGDrfd",PERIOD(),1),4);
    minAO.USDSGD = NormalizeDouble(iLow("USDSGDrfd",PERIOD(),1),4);
    priceUSDSGD = true;
    OpenOrderPriceUSDSGD = true;
    spreadUSDSGD = NormalizeDouble(ask.USDSGD-bid.USDSGD,5);
    //Print("Спред USDSGD = ",spreadUSDSGD);
    }
   else
   {//Print("Нет Цен - USDSGD");
    priceUSDSGD = false;}
//*************************************************    
    if((SymbolInfoTick("USDZARrfd",price)==true) && (USDZAR == true))
   {bid.USDZAR = price.bid;
    ask.USDZAR = price.ask;
    maxAO.USDZAR = NormalizeDouble(iHigh("USDZARrfd",PERIOD(),1),4);
    minAO.USDZAR = NormalizeDouble(iLow("USDZARrfd",PERIOD(),1),4);
    priceUSDZAR = true;
    OpenOrderPriceUSDZAR = true;
    spreadUSDZAR = NormalizeDouble(ask.USDZAR-bid.USDZAR,5);
    //Print("Спред USDZAR = ",spreadUSDZAR);
    }
   else
   {//Print("Нет Цен - USDZAR");
    priceUSDZAR = false;}
//*************************************************    
    if((SymbolInfoTick("USDMXNrfd",price)==true) && (USDMXN == true))
   {bid.USDMXN = price.bid;
    ask.USDMXN = price.ask;
    maxAO.USDMXN = NormalizeDouble(iHigh("USDMXNrfd",PERIOD(),1),4);
    minAO.USDMXN = NormalizeDouble(iLow("USDMXNrfd",PERIOD(),1),4);
    priceUSDMXN = true;
    OpenOrderPriceUSDMXN = true;
    spreadUSDMXN = NormalizeDouble(ask.USDMXN-bid.USDMXN,5);
    //Print("Спред USDMXN = ",spreadUSDMXN);
    }
   else
   {//Print("Нет Цен - USDMXN");
    priceUSDMXN = false;}
    
}