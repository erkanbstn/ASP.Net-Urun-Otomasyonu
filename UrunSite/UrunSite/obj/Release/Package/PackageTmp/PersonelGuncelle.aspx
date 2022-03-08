<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="PersonelGuncelle.aspx.cs" Inherits="UrunSite.PersonelGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:Label for="TxtID" runat="server" Text="Kategori ID" ></asp:Label>
            <asp:TextBox ID="TxtID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <br />

        <div>
            <asp:Label for="TxtPersonel" runat="server" Text="Personel Adı"></asp:Label>
            <asp:TextBox ID="TxtPersonel" runat="server" CssClass="form-control" placeholder="Personel Bilgilerini Giriniz"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnPersonelGuncelle" runat="server" Text="Personel Güncelle" CssClass="btn btn-warning" OnClick="BtnPersonelGuncelle_Click" />
    </form>
</asp:Content>
