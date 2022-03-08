using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;

namespace UrunSite
{
    public partial class Satislar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var satislar = (from x in Baglanti.db.Satislar
                            select new
                            {
                                x.SatisID,
                                x.Urunler.UrunAd,
                                x.Personeller.PersonelAdSoyad,
                                Musteri = x.Musteriler.MusteriAd+ " " + x.Musteriler.MusteriSoyad,
                                x.Fiyat
                            }).ToList();
            Repeater1.DataSource = satislar;
            Repeater1.DataBind();
        }
    }
}