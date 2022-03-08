using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;

namespace UrunSite
{
    public partial class UrunGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtUrunKategori.DataSource = Baglanti.db.Kategoriler.ToList();
            TxtUrunKategori.DataValueField = "KategoriID";
            TxtUrunKategori.DataTextField = "KategoriAd";
            TxtUrunKategori.DataBind();

            if (!Page.IsPostBack)
            {
                
                int id = Convert.ToInt32(Request.QueryString["UrunID"]);
                TxtID.Text = id.ToString();
                var x = Baglanti.db.Urunler.Find(id);
                TxtUrunAd.Text = x.UrunAd;
                TxtUrunFiyat.Text = x.UrunFiyat.ToString();
                TxtUrunKategori.SelectedValue = x.UrunKategori.ToString();
                TxtUrunMarka.Text = x.UrunMarka;
                TxtUrunStok.Text = x.UrunStok.ToString();
            }
        }


        protected void BtnUrunGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["UrunID"]);
            var g = Baglanti.db.Urunler.Find(id);
            g.UrunAd = TxtUrunAd.Text;
            g.UrunFiyat = Convert.ToDecimal(TxtUrunFiyat.Text);
;           g.UrunMarka = TxtUrunMarka.Text;
            g.UrunStok = byte.Parse(TxtUrunStok.Text);
            Baglanti.db.SaveChanges();
            Response.Redirect("UrunListesi.aspx");
        }
    }
}