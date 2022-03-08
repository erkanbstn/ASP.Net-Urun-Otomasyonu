<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Personeller.aspx.cs" Inherits="UrunSite.Personeller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">Personel ID</th>
                <th scope="col">Personel Bilgileri</th>
                <th scope="col">Sil </th>
                <th scope="col">Güncelle</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("PersonelID")%></td>
                        <td><%#Eval("PersonelAdSoyad")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"PersonelSil.aspx?PersonelID="+Eval("PersonelID")%>'  runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"PersonelGuncelle.aspx?PersonelID="+Eval("PersonelID")%>' runat="server" CssClass="btn btn-primary">Güncelle</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
    <a href="PersonelEkle.aspx" class="btn btn-warning">Yeni Personel Ekle</a>



</asp:Content>
