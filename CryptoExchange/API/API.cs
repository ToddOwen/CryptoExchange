using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

namespace CryptoExchange.API
{
    public class API
    { 
      
        public API()
        {
        }

        public string getBTCPrice()
        {
            string url = "https://api.coindesk.com/v1/bpi/currentprice.json";
            string json = new WebClient().DownloadString(url);
            dynamic data = JsonConvert.DeserializeObject(json);
            string price = data.bpi.GBP.rate;
            return price;
        }

        public string getETHPrice(){
            string url = "https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=GBP";
            string json = new WebClient().DownloadString(url);
            dynamic data = JsonConvert.DeserializeObject(json);
            string price = data.GBP;
            return price;
        }



    }
          

}