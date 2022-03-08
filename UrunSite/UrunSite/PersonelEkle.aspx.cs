using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;
namespace UrunSite
{
    public partial class PersonelEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPersonelEkle_Click(object sender, EventArgs e)
        {
            Entity.Personeller f = new Entity.Personeller();
            f.PersonelAdSoyad = TxtPersonel.Text;
            Baglanti.db.Personeller.Add(f);
            Baglanti.db.SaveChanges();
            Response.Redirect("Personeller.aspx");
        }
    }
}