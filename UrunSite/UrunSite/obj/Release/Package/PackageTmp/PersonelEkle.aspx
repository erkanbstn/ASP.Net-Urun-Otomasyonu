<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="PersonelEkle.aspx.cs" Inherits="UrunSite.PersonelEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group"> 
        <div>
            <asp:TextBox ID="TxtPersonel" runat="server" CssClass="form-control" placeholder="Personel Bilgilerini Giriniz"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnPersonelEkle" runat="server" Text="Personel Ekle" CssClass="btn btn-warning" OnClick="BtnPersonelEkle_Click"  />
    </form>
</asp:Content>
