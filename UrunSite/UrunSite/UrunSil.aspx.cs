using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;

namespace UrunSite
{
    public partial class UrunSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["UrunID"]);
            var x = Baglanti.db.Urunler.Find(id);
            x.Durum = false;
            Baglanti.db.SaveChanges();
            Response.Redirect("UrunListesi.aspx");
        }
    }
}