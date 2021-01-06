<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rap.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Tất cả các rạp
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
    <div class="col-main">
        <asp:DataList ID="DLRap" runat="server" DataKeyField="IdRap" DataSourceID="SqlDataSource1" CellSpacing="40" RepeatColumns="4" RepeatDirection="Horizontal" Width="750px">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="180px" />
&nbsp;<asp:Label ID="IdRapLabel" runat="server" Text='<%# Eval("IdRap") %>' Visible="False" />
                <br />
                <asp:Label ID="TenRapLabel" runat="server" Text='<%# Eval("TenRap") %>' Font-Bold="True" ForeColor="#CC0000" />
                <br />
                <br />
                Địa chỉ:
                <asp:Label ID="DiachiLabel" runat="server" Text='<%# Eval("Diachi") %>' />
                <br />
                <br />
                Số chỗ ngồi:
                <asp:Label ID="SoChoNgoiLabel" runat="server" Text='<%# Eval("SoChoNgoi") %>' />
                <br />
                <br />
                Số điện thoại:
                <asp:Label ID="SdtLabel" runat="server" Text='<%# Eval("Sdt") %>' />
                <br />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyRapPhim2ConnectionString9 %>" SelectCommand="SELECT * FROM [RapChieuPhim]"></asp:SqlDataSource>
        </div>
    <//div>
</asp:Content>

