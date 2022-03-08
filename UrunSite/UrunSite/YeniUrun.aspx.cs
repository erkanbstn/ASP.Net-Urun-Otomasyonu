using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;

namespace UrunSite
{
    public partial class YeniUrun : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtUrunKategori.DataSource = Baglanti.db.Kategoriler.ToList();
            TxtUrunKategori.DataValueField = "KategoriID";
            TxtUrunKategori.DataTextField = "KategoriAd";
            TxtUrunKategori.DataBind();
        }

        protected void BtnUrunEkle_Click(object sender, EventArgs e)
        {
            Entity.Urunler g = new Urunler();
            g.UrunAd = TxtUrunAd.Text;
            g.UrunFiyat = Convert.ToDecimal(TxtUrunFiyat.Text);
            g.UrunKategori = byte.Parse(TxtUrunKategori.SelectedValue);
            g.UrunMarka = TxtUrunMarka.Text;
            g.UrunStok = byte.Parse(TxtUrunStok.Text);
            Baglanti.db.Urunler.Add(g);
            Baglanti.db.SaveChanges();
            Response.Redirect("UrunListesi.aspx");
        }
    }
}