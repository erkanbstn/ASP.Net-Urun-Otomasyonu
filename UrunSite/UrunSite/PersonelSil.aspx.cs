using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using UrunSite.Entity;
using System.Web.UI.WebControls;

namespace UrunSite
{
    public partial class PersonelSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["PersonelID"]);
            var x = Baglanti.db.Personeller.Find(id);
            Baglanti.db.Personeller.Remove(x);
            Baglanti.db.SaveChanges();
            Response.Redirect("Personeller.aspx");
        }
    }
}