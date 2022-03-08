using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;
namespace UrunSite
{
    public partial class PersonelGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["PersonelID"]);
                TxtID.Text = id.ToString();
                var x = Baglanti.db.Personeller.Find(id);
                TxtPersonel.Text = x.PersonelAdSoyad;
            }
        }


        protected void BtnPersonelGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["PersonelID"]);
            var x = Baglanti.db.Personeller.Find(id);
            x.PersonelAdSoyad = TxtPersonel.Text;
            Baglanti.db.SaveChanges();
            Response.Redirect("Personeller.aspx");
        }
    }
}