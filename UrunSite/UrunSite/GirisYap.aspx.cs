using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunSite.Entity;
namespace UrunSite
{
    public partial class GirisYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in Baglanti.db.Admin where x.Kullanici == TxtKullanici.Text && x.Sifre == TxtParola.Text select x;
            if (sorgu.Any())
            {
                Response.Redirect("Kategoriler.aspx");
            }
            else
            {
                Response.Write("<script lang='JavaScript'>alert('Hatalı Kullanıcı Adı Veya Şifre');</script>");
            }
        }
    }
}