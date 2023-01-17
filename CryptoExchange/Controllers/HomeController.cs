using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CryptoExchange.Models;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;

namespace CryptoExchange.Controllers
{
    public class HomeController : Controller
    {
      
       

        // GET: Home
        public ActionResult Index()
        {
            return View();
        }



        [HttpPost]
        public ActionResult Index(User user)
        {
            user.BTC = 1;
            user.ETH = 0;
            user.GBP = 0;

            if (ModelState.IsValid)
            {
                CryptoMadoffEntities db = new CryptoMadoffEntities();
                db.Users.Add(user);
                db.SaveChanges();
            }
          

            return View(user);
        }


        public ActionResult Login() {
            return View();
        }

       [HttpPost]
        public ActionResult Login(string username, string password)
        {

            CryptoMadoffEntities db = new CryptoMadoffEntities();
            User loggedIn = db.Users.First(x => x.Username == username);
            




            return RedirectToAction("Spot", "Home", new {@id = loggedIn.UserID });

        }

        [HttpGet]
        public ActionResult Spot(int id)
        {
            CryptoMadoffEntities db = new CryptoMadoffEntities();
            User loggedIn = db.Users.First(x => x.UserID == id);
            Session.Add("BTC", loggedIn.BTC);
            Session.Add("ETH", loggedIn.ETH);
            Session.Add("GBP", loggedIn.GBP);
            Session.Add("UserID", loggedIn.UserID);
            return View();

            
        }

        [HttpPost]
        public ActionResult Spot(Transaction Order)
        {
            CryptoMadoffEntities db = new CryptoMadoffEntities();
            User loggedIn = db.Users.First(x => x.UserID == int.Parse(HttpContext.Session["UserID"].ToString()));

            Order.UserID = loggedIn.UserID;
            if (Order.CurrencyFrom == "BTC")
            {

            }





            return RedirectToAction("Spot", "Home");

        }



    }
}