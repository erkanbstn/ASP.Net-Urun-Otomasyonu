using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;

namespace UrunSite
{
    public partial class YeniSatis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                var urun = (from x in Baglanti.db.Urunler select new { x.UrunID, x.UrunAd }).ToList();
                DropDownList1.DataTextField = "URUNAD";
                DropDownList1.DataValueField = "URUNID";
                DropDownList1.DataSource = urun;
                DropDownList1.DataBind();

                var mus = (from x in Baglanti.db.Musteriler
                           select new
                           {
                               x.MusteriID,
                               AdSoyad = x.MusteriAd + " " + x.MusteriSoyad
                           }).ToList();
                DropDownList2.DataTextField = "AdSoyad";
                DropDownList2.DataValueField = "MusteriID";
                DropDownList2.DataSource = mus;
                DropDownList2.DataBind();

                var per = (from x in Baglanti.db.Personeller select new { x.PersonelID, x.PersonelAdSoyad }).ToList();
                DropDownList3.DataTextField = "PersonelAdSoyad";
                DropDownList3.DataValueField = "PersonelID";
                DropDownList3.DataSource = per;
                DropDownList3.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Entity.Satislar t = new Entity.Satislar();
            t.Musteri = byte.Parse(DropDownList2.SelectedValue);
            t.Urun = byte.Parse(DropDownList1.SelectedValue);
            t.Personel = byte.Parse(DropDownList3.SelectedValue);
            t.Fiyat = decimal.Parse(TxtFiyat.Text);
            Baglanti.db.Satislar.Add(t);
            Baglanti.db.SaveChanges();
            Response.Redirect("Satislar.Aspx");
        }
    }
}