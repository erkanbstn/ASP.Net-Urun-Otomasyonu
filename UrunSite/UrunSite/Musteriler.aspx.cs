using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;

namespace UrunSite
{
    public partial class Musteriler : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = Baglanti.db.Musteriler.ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            Entity.Musteriler t = new Entity.Musteriler();
            t.MusteriAd = TextBox1.Text;
            t.MusteriSoyad = TextBox2.Text;
            Baglanti.db.Musteriler.Add(t);
            Baglanti.db.SaveChanges();
        }
    }
}