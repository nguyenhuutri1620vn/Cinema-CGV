<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tinmoi.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    TIN MỚI VÀ ƯU ĐÃI
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <style>
    </style>
    <div class="main">
    <div class="col-main">
<asp:DataList ID="DataList2" runat="server" CellSpacing="35" CssClass="font" DataSourceID="SqlDataSource2" RepeatColumns="4" OnItemCommand="DataList2_ItemCommand" DataKeyField="IdTinTuc">
    <ItemTemplate>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="222px" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="180px" />
        <asp:Label ID="IdTinTuc" runat="server" Text='<%# Eval("IdTinTuc") %>' Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="TenTinTucLabel" runat="server" Font-Bold="True" Font-Size="15pt" Text='<%# Eval("TenTinTuc") %>' Font-Underline="False" Height="26px" />
        <br />
<br />
    </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyRapPhim2ConnectionString %>" SelectCommand="SELECT [IdTinTuc], [TenTinTuc], [HinhAnh] FROM [TinTucPhim]"></asp:SqlDataSource>
        </div>
        </div>
</asp:Content>
