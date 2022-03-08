<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="YeniUrun.aspx.cs" Inherits="UrunSite.YeniUrun" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TxtUrunAd" runat="server" CssClass="form-control" placeholder="Ürün Adı Giriniz"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:TextBox ID="TxtUrunMarka" runat="server" CssClass="form-control" placeholder="Ürün Marka Giriniz"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:DropDownList ID="TxtUrunKategori" runat="server" CssClass="form-control"></asp:DropDownList>
           
            <br />
        </div>
        <div>
            <asp:TextBox ID="TxtUrunFiyat" runat="server" CssClass="form-control" placeholder="Ürün Fiyat Giriniz"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtUrunStok" runat="server" CssClass="form-control" placeholder="Ürün Stok Giriniz"></asp:TextBox>
        </div>

        <br />
        <asp:Button ID="BtnUrunEkle" runat="server" Text="Ürün Ekle" CssClass="btn btn-warning" OnClick="BtnUrunEkle_Click" />
    </form>
</asp:Content>
