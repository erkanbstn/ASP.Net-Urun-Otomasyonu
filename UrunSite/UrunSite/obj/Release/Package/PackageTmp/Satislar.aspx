<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Satislar.aspx.cs" Inherits="UrunSite.Satislar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table  table-hover">
        <tr>
            <th>SATIŞ ID</th>
            <th>ÜRÜN</th>
            <th>PERSONEL</th>
            <th>MÜŞTERİ</th>
            <th>FİYAT</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("SatisID") %></td>
                    <td><%#Eval("UrunAd") %></td>
                    <td><%#Eval("PersonelAdSoyad") %></td>
                    <td><%#Eval("Musteri") %></td>
                    <td><%#Eval("Fiyat") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="YeniSatis.aspx" class="btn btn-info">Yeni Satış</a>
</asp:Content>
