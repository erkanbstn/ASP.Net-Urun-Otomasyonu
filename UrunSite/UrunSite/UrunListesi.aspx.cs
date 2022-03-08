using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;

namespace UrunSite
{
    public partial class UrunListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Repeater1.DataSource = Baglanti.db.Urunler.Where(x => x.Durum == true).ToList();
            var c = (from x in Baglanti.db.Urunler
                     where x.Durum == true
                     select new
                     {
                         x.UrunID,
                         x.UrunAd,
                         x.UrunMarka,
                         x.Kategoriler.KategoriAd,
                         x.UrunFiyat,
                         x.UrunStok
                     }).ToList();
            Repeater1.DataSource = c;
            Repeater1.DataBind();
        }
    }
}