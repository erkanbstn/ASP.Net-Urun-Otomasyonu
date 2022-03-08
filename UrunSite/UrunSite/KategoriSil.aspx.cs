using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;

namespace UrunSite
{
    public partial class KategoriSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KategoriID"]);
            var x = Baglanti.db.Kategoriler.Find(id);
            Baglanti.db.Kategoriler.Remove(x);
            Baglanti.db.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}