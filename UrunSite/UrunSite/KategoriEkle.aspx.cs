using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;

namespace UrunSite
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKategoriEkle_Click(object sender, EventArgs e)
        {
            Entity.Kategoriler f = new Entity.Kategoriler();
            f.KategoriAd = TxtKategori.Text;
            Baglanti.db.Kategoriler.Add(f);
            Baglanti.db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}