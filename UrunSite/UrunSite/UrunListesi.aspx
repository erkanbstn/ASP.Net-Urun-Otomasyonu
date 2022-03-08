<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="UrunListesi.aspx.cs" Inherits="UrunSite.UrunListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">Ürün ID</th>
                <th scope="col">Ürün Adı</th>
                <th scope="col">Marka</th>
                <th scope="col">Kategori</th>
                <th scope="col">Fiyat</th>
                <th scope="col">Stok</th>
                <th scope="col">Sil</th>
                <th scope="col">Güncelle</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("UrunID")%></td>
                        <td><%#Eval("UrunAd")%></td>
                        <td><%#Eval("UrunMarka")%></td>
                        <td><%#Eval("KategoriAd")%></td>
                        <td><%#Eval("UrunFiyat")%></td>
                        <td><%#Eval("UrunStok")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"UrunSil.aspx?UrunID="+Eval("UrunID")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"UrunGuncelle.aspx?UrunID="+Eval("UrunID")%>' runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="YeniUrun.aspx" class="btn btn-warning">Yeni Ürün Ekle</a>
</asp:Content>
