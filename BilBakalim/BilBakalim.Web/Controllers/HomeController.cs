﻿using BilBakalim.Data;
using BilBakalim.Data.Model;
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
            ViewBag.Siniflar= ctx.Sinif.Include("Resim").Include("Favori").Include("Sorular").Where(x=>x.Gorunurluk == true).OrderByDescending(x => x.OlusturmaTarihi).Take(20).ToList();
            ViewBag.Favori = ctx.Favori.ToList();
            ViewBag.SinifKategorileri = ctx.SinifKategori.Include("Resim").ToList();
            //ViewBag.Siniflar = ctx.Database.SqlQuery<Sinif>("SELECT TOP 5 *FROM Sinif order by OlusturmaTarihi desc").Where(x => x.Gorunurluk == true).ToList();
            return View();
        }

        public ActionResult EnCokOynanan()
        {
            ViewBag.SinifKategorileri = ctx.SinifKategori.Include("Resim").ToList();
            ViewBag.oyna = ctx.Sinif.Include("Resim").Include("Favori").Include("Sorular").Where(x=>x.Gorunurluk==true).OrderByDescending(x => x.GoruntulenmeSayisi).Take(20).ToList();
            return View();
        }
   
        public ActionResult Gelistiriciler()
        {
            return View();
        }
        public PartialViewResult KategoriGetir()
        {
            List<DateTime?> tarihler = ctx.Sinif.Where(x => x.ID == 10).Select(x => x.OlusturmaTarihi).ToList();
            ViewBag.Kategori=ctx.SinifKategori.ToList();
            return PartialView();
        }

        [HttpGet]
        public ActionResult KategoriAyrıntı(int id)
        {

            var ad = ctx.SinifKategori.Where(x => x.ID == id).FirstOrDefault();
            ViewBag.Kategori = ctx.SinifKategori.Include("Sinif").ToList();
            ViewBag.Oyunlar = ctx.Sinif.Include("Resim").Include("Favori").Include("Sorular").Where(x => x.SinifKategoriID == id && x.Gorunurluk==true);
            return View(ad);
        }

        public ActionResult SinifAyrinti(int id)
        {
            ViewBag.soru = ctx.Sorular.Include("Sinif").Where(x => x.SinifID == id).ToList();
            return View(ctx.Sinif.Include("Resim").Include("Kullanici").Where(x => x.ID == id).SingleOrDefault());
        }

        public ActionResult SoruSil(int id)
        {

            Sorular soru = ctx.Sorular.Where(x => x.ID == id).SingleOrDefault();
            int? git = soru.SinifID;
            ctx.Sorular.Remove(soru);
            ctx.SaveChanges();
            return RedirectToAction("SinifAyrinti", new { id = git });
        }

        [HttpPost]
        public ActionResult SinifAra(string search)
        {
            ViewBag.Kategori = ctx.SinifKategori.Include("Sinif").ToList();
            // ViewBag.Oyunlar = ctx.Sinif.Include("Resim").Include("Favori").Include("Sorular").Where(x => x.SinifKategoriID == id && x.Gorunurluk == true);
            ViewBag.sonuc = ctx.Sinif.Include("Resim").Include("Favori").Include("Sorular").Where(x => x.Ad.Contains(search)).ToList();
            return View();
        }

        public ActionResult SoruDuzenle(int id)
        {
            return View(ctx.Sorular.Where(x => x.ID == id).FirstOrDefault());
        }
        [HttpPost]
        public ActionResult SoruDuzenle(Sorular s)
        {
            Sorular soru = ctx.Sorular.Where(x => x.ID == s.ID).SingleOrDefault();
            soru.Soru = s.Soru;
            soru.Cevap1 = s.Cevap1;
            soru.Cevap2 = s.Cevap2;
            soru.Cevap3 = s.Cevap3;
            soru.Cevap4 = s.Cevap4;
            if (s.Odul==null)
            {
                soru.Odul = false;
            }         
            soru.DogruCevap = s.DogruCevap;
            soru.Sure = s.Sure;
            ctx.SaveChanges();
            return RedirectToAction("SinifAyrinti",new {id=s.SinifID});
        }
    }
}