<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="UrunSite.KategoriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group"> 
        <div>
            <asp:TextBox ID="TxtKategori" runat="server" CssClass="form-control" placeholder="Kategori Adı Giriniz"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnKategoriEkle" runat="server" Text="Kategori Ekle" CssClass="btn btn-warning" OnClick="BtnKategoriEkle_Click" />
    </form>
</asp:Content>
