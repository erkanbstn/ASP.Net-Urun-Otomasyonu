<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="UrunSite.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">Kategori ID</th>
                <th scope="col">Kategori Adı</th>
                <th scope="col">Sil</th>
                <th scope="col">Güncelle</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("KategoriID")%></td>
                        <td><%#Eval("KategoriAd")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"KategoriSil.aspx?KategoriID="+Eval("KategoriID")%>'  runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"KategoriGuncelle.aspx?KategoriID="+Eval("KategoriID")%>' runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
    <a href="KategoriEkle.aspx" class="btn btn-warning">Yeni Kategori Ekle</a>

</asp:Content>
