// программа для инициализации робота
void NewBar()
{

_NewBar1.XAUUSD = iOpen("XAUUSDrfd",PERIOD(),0);         // получаем цену открытия 0 бара
_NewBar2.XAUUSD = iOpen("XAUUSDrfd",PERIOD(),1);         // получаем цену открытия 1 бара
raznica1.XAUUSD = _NewBar1.XAUUSD - _NewBar2.XAUUSD;     // разница сохраняется в 0 разнице

_NewBar1.AUDJPY = iOpen("AUDJPYrfd",PERIOD(),0);
_NewBar2.AUDJPY = iOpen("AUDJPYrfd",PERIOD(),1);
raznica1.AUDJPY = _NewBar1.AUDJPY - _NewBar2.AUDJPY;

_NewBar1.USDJPY = iOpen("USDJPYrfd",PERIOD(),0);
_NewBar2.USDJPY = iOpen("USDJPYrfd",PERIOD(),1);
raznica1.USDJPY = _NewBar1.USDJPY - _NewBar2.USDJPY;

_NewBar1.EURJPY = iOpen("EURJPYrfd",PERIOD(),0);
_NewBar2.EURJPY = iOpen("EURJPYrfd",PERIOD(),1);
raznica1.EURJPY = _NewBar1.EURJPY - _NewBar2.EURJPY;

_NewBar1.CHFJPY = iOpen("CHFJPYrfd",PERIOD(),0);
_NewBar2.CHFJPY = iOpen("CHFJPYrfd",PERIOD(),1);
raznica1.CHFJPY = _NewBar1.CHFJPY - _NewBar2.CHFJPY;

_NewBar1.GBPJPY = iOpen("GBPJPYrfd",PERIOD(),0);
_NewBar2.GBPJPY = iOpen("GBPJPYrfd",PERIOD(),1);
raznica1.GBPJPY = _NewBar1.GBPJPY - _NewBar2.GBPJPY;

_NewBar1.EURRUB = iOpen("EURRUBrfd",PERIOD(),0);
_NewBar2.EURRUB = iOpen("EURRUBrfd",PERIOD(),1);
raznica1.EURRUB = _NewBar1.EURRUB - _NewBar2.EURRUB;

_NewBar1.USDRUB = iOpen("USDRUBrfd",PERIOD(),0);
_NewBar2.USDRUB = iOpen("USDRUBrfd",PERIOD(),1);
raznica1.USDRUB = _NewBar1.USDRUB - _NewBar2.USDRUB;

_NewBar1.XAGUSD = iOpen("XAGUSDrfd",PERIOD(),0);
_NewBar2.XAGUSD = iOpen("XAGUSDrfd",PERIOD(),1);
raznica1.XAGUSD = _NewBar1.XAGUSD - _NewBar2.XAGUSD;

_NewBar1.EURUSD = iOpen("EURUSDrfd",PERIOD(),0);
_NewBar2.EURUSD = iOpen("EURUSDrfd",PERIOD(),1);
raznica1.EURUSD = _NewBar1.EURUSD - _NewBar2.EURUSD;

_NewBar1.GBPUSD = iOpen("GBPUSDrfd",PERIOD(),0);
_NewBar2.GBPUSD = iOpen("GBPUSDrfd",PERIOD(),1);
raznica1.GBPUSD = _NewBar1.GBPUSD - _NewBar2.GBPUSD;

_NewBar1.USDCHF = iOpen("USDCHFrfd",PERIOD(),0);
_NewBar2.USDCHF = iOpen("USDCHFrfd",PERIOD(),1);
raznica1.USDCHF = _NewBar1.USDCHF - _NewBar2.USDCHF;

_NewBar1.NZDUSD = iOpen("NZDUSDrfd",PERIOD(),0);
_NewBar2.NZDUSD = iOpen("NZDUSDrfd",PERIOD(),1);
raznica1.NZDUSD = _NewBar1.NZDUSD - _NewBar2.NZDUSD;

_NewBar1.USDCAD = iOpen("USDCADrfd",PERIOD(),0);
_NewBar2.USDCAD = iOpen("USDCADrfd",PERIOD(),1);
raznica1.USDCAD = _NewBar1.USDCAD - _NewBar2.USDCAD;

_NewBar1.AUDUSD = iOpen("AUDUSDrfd",PERIOD(),0);
_NewBar2.AUDUSD = iOpen("AUDUSDrfd",PERIOD(),1);
raznica1.AUDUSD = _NewBar1.AUDUSD - _NewBar2.AUDUSD;

_NewBar1.AUDNZD = iOpen("AUDNZDrfd",PERIOD(),0);
_NewBar2.AUDNZD = iOpen("AUDNZDrfd",PERIOD(),1);
raznica1.AUDNZD = _NewBar1.AUDNZD - _NewBar2.AUDNZD;

_NewBar1.AUDCHF = iOpen("AUDCHFrfd",PERIOD(),0);
_NewBar2.AUDCHF = iOpen("AUDCHFrfd",PERIOD(),1);
raznica1.AUDCHF = _NewBar1.AUDCHF - _NewBar2.AUDCHF;

_NewBar1.GBPNZD = iOpen("GBPNZDrfd",PERIOD(),0);
_NewBar2.GBPNZD = iOpen("GBPNZDrfd",PERIOD(),1);
raznica1.GBPNZD = _NewBar1.GBPNZD - _NewBar2.GBPNZD;

_NewBar1.EURAUD = iOpen("EURAUDrfd",PERIOD(),0);
_NewBar2.EURAUD = iOpen("EURAUDrfd",PERIOD(),1);
raznica1.EURAUD = _NewBar1.EURAUD - _NewBar2.EURAUD;

_NewBar1.EURCAD = iOpen("EURCADrfd",PERIOD(),0);
_NewBar2.EURCAD = iOpen("EURCADrfd",PERIOD(),1);
raznica1.EURCAD = _NewBar1.EURCAD - _NewBar2.EURCAD;

_NewBar1.EURGBP = iOpen("EURGBPrfd",PERIOD(),0);
_NewBar2.EURGBP = iOpen("EURGBPrfd",PERIOD(),1);
raznica1.EURGBP = _NewBar1.EURGBP - _NewBar2.EURGBP;

_NewBar1.EURCHF = iOpen("EURCHFrfd",PERIOD(),0);
_NewBar2.EURCHF = iOpen("EURCHFrfd",PERIOD(),1);
raznica1.EURCHF = _NewBar1.EURCHF - _NewBar2.EURCHF;

_NewBar1.EURNZD = iOpen("EURNZDrfd",PERIOD(),0);
_NewBar2.EURNZD = iOpen("EURNZDrfd",PERIOD(),1);
raznica1.EURNZD = _NewBar1.EURNZD - _NewBar2.EURNZD;

_NewBar1.USDSGD = iOpen("USDSGDrfd",PERIOD(),0);
_NewBar2.USDSGD = iOpen("USDSGDrfd",PERIOD(),1);
raznica1.USDSGD = _NewBar1.USDSGD - _NewBar2.USDSGD;

_NewBar1.GBPCAD = iOpen("GBPCADrfd",PERIOD(),0);
_NewBar2.GBPCAD = iOpen("GBPCADrfd",PERIOD(),1);
raznica1.GBPCAD = _NewBar1.GBPCAD - _NewBar2.GBPCAD;

_NewBar1.GBPAUD = iOpen("GBPAUDrfd",PERIOD(),0);
_NewBar2.GBPAUD = iOpen("GBPAUDrfd",PERIOD(),1);
raznica1.GBPAUD = _NewBar1.GBPAUD - _NewBar2.GBPAUD;

_NewBar1.EURNOK = iOpen("EURNOKrfd",PERIOD(),0);
_NewBar2.EURNOK = iOpen("EURNOKrfd",PERIOD(),1);
raznica1.EURNOK = _NewBar1.EURNOK - _NewBar2.EURNOK;

_NewBar1.AUDCAD = iOpen("AUDCADrfd",PERIOD(),0);
_NewBar2.AUDCAD = iOpen("AUDCADrfd",PERIOD(),1);
raznica1.AUDCAD = _NewBar1.AUDCAD - _NewBar2.AUDCAD;

_NewBar1.GBPCHF = iOpen("GBPCHFrfd",PERIOD(),0);
_NewBar2.GBPCHF = iOpen("GBPCHFrfd",PERIOD(),1);
raznica1.GBPCHF = _NewBar1.GBPCHF - _NewBar2.GBPCHF;

_NewBar1.USDSEK = iOpen("USDSEKrfd",PERIOD(),0);
_NewBar2.USDSEK = iOpen("USDSEKrfd",PERIOD(),1);
raznica1.USDSEK = _NewBar1.USDSEK - _NewBar2.USDSEK;

_NewBar1.USDMXN = iOpen("USDMXNrfd",PERIOD(),0);
_NewBar2.USDMXN = iOpen("USDMXNrfd",PERIOD(),1);
raznica1.USDMXN = _NewBar1.USDMXN - _NewBar2.USDMXN;

_NewBar1.USDNOK = iOpen("USDNOKrfd",PERIOD(),0);
_NewBar2.USDNOK = iOpen("USDNOKrfd",PERIOD(),1);
raznica1.USDNOK = _NewBar1.USDNOK - _NewBar2.USDNOK;

_NewBar1.EURSEK = iOpen("EURSEKrfd",PERIOD(),0);
_NewBar2.EURSEK = iOpen("EURSEKrfd",PERIOD(),1);
raznica1.EURSEK = _NewBar1.EURSEK - _NewBar2.EURSEK;

_NewBar1.USDDKK = iOpen("USDDKKrfd",PERIOD(),0);
_NewBar2.USDDKK = iOpen("USDDKKrfd",PERIOD(),1);
raznica1.USDDKK = _NewBar1.USDDKK - _NewBar2.USDDKK;

_NewBar1.USDZAR = iOpen("USDZARrfd",PERIOD(),0);
_NewBar2.USDZAR = iOpen("USDZARrfd",PERIOD(),1);
raznica1.USDZAR = _NewBar1.USDZAR - _NewBar2.USDZAR;

;}