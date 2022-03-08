using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;
namespace UrunSite
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["KategoriID"]);
                TxtID.Text = id.ToString();
                var x = Baglanti.db.Kategoriler.Find(id);
                TxtKategori.Text = x.KategoriAd;
            }
        }

        protected void BtnKategoriGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KategoriID"]);
            var x = Baglanti.db.Kategoriler.Find(id);
            x.KategoriAd = TxtKategori.Text;
            Baglanti.db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}