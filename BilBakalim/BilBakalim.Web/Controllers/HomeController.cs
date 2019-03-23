﻿using BilBakalim.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BilBakalim.Web.Controllers
{
    public class HomeController : Controller
    {

        // GET: Home
        BilBakalimContext ctx = new BilBakalimContext();
        public ActionResult Index()
        {
            ViewBag.Siniflar = ctx.Sinif.ToList();
            ViewBag.Favori = ctx.Favori.ToList();
            return View();
        }
        public ActionResult Gelistiriciler()
        {
            return View();
        }
        public PartialViewResult KategoriGetir()
        {
            ViewBag.Kategori=ctx.SinifKategori.ToList();
            return PartialView();
        }
      
    }
}