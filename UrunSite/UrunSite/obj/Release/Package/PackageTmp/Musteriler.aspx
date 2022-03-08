<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Musteriler.aspx.cs" Inherits="UrunSite.Musteriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-hover" style="margin-top:20px">
        <tr>
            <th>ID</th>
            <th>AD</th>
            <th>SOYAD</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("MusteriID") %></td>
                    <td><%# Eval("MusteriAd") %></td>
                    <td><%# Eval("MusteriSoyad") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
     <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#Modal1">
        Yeni Müşteri Tanımla
    </button>
    <div class="modal" id="Modal1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title">Müşteri Ekleme Paneli</h2>
                </div>
                <form runat="server">
                    <div class="modal-body">
                        <label>
                          Ad
                        </label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <label>
                            Soyad
                        </label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="BtnKaydet_Click" />
                        <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-danger" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    
</asp:Content>
