<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="themngaychieu.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Thêm ngày chiếu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 115px;
        }
        .auto-style6 {
            width: 239px;
        }
        .auto-style7 {
            width: 115px;
            height: 15px;
        }
        .auto-style8 {
            width: 239px;
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
    <h2>QUẢN LÝ NGÀY CHIẾU</h2>
        <p>
            <asp:Button ID="Button1" runat="server" Text="QUAY LẠI"  CssClass="btnmua" OnClick="Button1_Click"/></p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style5">Mã ngày chiếu</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtIdNgayChieu" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Mã phim</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="ddlPhim" runat="server" DataSourceID="SqlDataSource1" DataTextField="IdPhim" DataValueField="IdPhim">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyRapPhim2ConnectionString %>" SelectCommand="SELECT [IdPhim] FROM [Phim]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Mã Rạp</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="ddlRap" runat="server" DataSourceID="SqlDataSource2" DataTextField="IdRap" DataValueField="IdRap">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyRapPhim2ConnectionString %>" SelectCommand="SELECT [IdRap] FROM [RapChieuPhim]"></asp:SqlDataSource>
                </td>
            </tr>
             <tr>
                <td class="auto-style5">Ngày chiếu</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtLich" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="btnLich" runat="server" ImageUrl="~/img/icon_ticket.png" OnClick="btnLich_Click1" />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                 </td>
            </tr>
             <tr>
                <td class="auto-style7">Giờ chiếu</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtGio" runat="server"></asp:TextBox>
                 </td>
            </tr>
            <tr>
                <td class="auto-style5">Giá</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lbthongbao" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="btnThem" runat="server" CssClass="btnThem" Text="Thêm" OnClick="btnThem_Click" />
                    <br />
                </td>
            </tr>
        </table>
    <br />
        </div>
</asp:Content>

