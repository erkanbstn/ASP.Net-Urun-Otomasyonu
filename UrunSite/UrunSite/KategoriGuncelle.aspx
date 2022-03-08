<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="UrunSite.KategoriGuncelle" %>

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
            <asp:Label for="TxtKategori" runat="server" Text="Kategori Adı"></asp:Label>
            <asp:TextBox ID="TxtKategori" runat="server" CssClass="form-control" placeholder="Kategori Adı Giriniz"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnKategoriGuncelle" runat="server" Text="Kategori Güncelle" CssClass="btn btn-warning" OnClick="BtnKategoriGuncelle_Click" />
    </form>


</asp:Content>
