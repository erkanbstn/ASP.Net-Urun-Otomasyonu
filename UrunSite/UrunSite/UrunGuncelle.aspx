<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="UrunGuncelle.aspx.cs" Inherits="UrunSite.UrunGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <div>
            <asp:Label for="TxtID" runat="server" Text="Ürün ID"></asp:Label>
            <asp:TextBox ID="TxtID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtUrunAd" runat="server" Text="Ürün Adı"></asp:Label>
            <asp:TextBox ID="TxtUrunAd" runat="server" CssClass="form-control" placeholder="Ürün Adı Giriniz"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Label for="TxtUrunMarka" runat="server" Text="Ürün Markası"></asp:Label>
            <asp:TextBox ID="TxtUrunMarka" runat="server" CssClass="form-control" placeholder="Ürün Marka Giriniz"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Label for="TxtUrunKategori" runat="server" Text="Ürün Kategorisi"></asp:Label>
            <asp:DropDownList ID="TxtUrunKategori" runat="server" CssClass="form-control" Enabled="false"></asp:DropDownList>

            <br />
        </div>
        <div>
            <asp:Label for="TxtUrunFiyat" runat="server" Text="Ürün Fiyatı"></asp:Label>
            <asp:TextBox ID="TxtUrunFiyat" runat="server" CssClass="form-control" placeholder="Ürün Fiyat Giriniz"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtUrunStok" runat="server" Text="Ürün Stok"></asp:Label>
            <asp:TextBox ID="TxtUrunStok" runat="server" CssClass="form-control" placeholder="Ürün Stok Giriniz"></asp:TextBox>
        </div>

        <br />
        <asp:Button ID="BtnUrunGuncelle" runat="server" Text="Ürün Güncelle" CssClass="btn btn-warning" OnClick="BtnUrunGuncelle_Click"/>
    </form>

</asp:Content>
