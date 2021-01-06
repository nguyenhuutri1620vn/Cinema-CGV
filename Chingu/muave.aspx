<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="muave.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Đặt vé
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            width: 204px;
        }
        .auto-style27 {
            width: 204px;
            height: 17px;
        }
        .auto-style28 {
            width: 900px;
            height: 17px;
        }
        .auto-style29 {
            width: 900px;
        }  
        .btnThem {
    border-style: none;
    background-color: #bd1919;
    border-width: 0;
    display: inline-block;
    padding: 6px 2px;
    color: #FFFFFF;
    font-size: 13px;
    font-weight: normal;
    font-family: "Helvetica Neue", Verdana, Arial, sans-serif;
    line-height: 19px;
    text-align: center;
    text-transform: uppercase;
    vertical-align: middle;
    white-space: nowrap;
    align-items:center;
}
        .auto-style30 {
            width: 204px;
            height: 26px;
        }
        .auto-style31 {
            width: 900px;
            height: 26px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
<h2>Lịch chiếu phim
    <asp:Label ID="lbPhim" runat="server"></asp:Label>
        <asp:Label ID="IdNgayChieu" runat="server" Visible="False"></asp:Label>
        </h2>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style30">Ngày chiếu</td>
                <td class="auto-style31">
                    <asp:DropDownList ID="ddlNgayChieu" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlNgayChieu_SelectedIndexChanged" AppendDataBoundItems="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Thời gian</td>
                <td class="auto-style28">
                    <asp:DropDownList ID="ddlThoiGian" runat="server" AutoPostBack="True" AppendDataBoundItems="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Số lượng</td>
                <td class="auto-style28">
                    <asp:DropDownList ID="ddlsoluong" runat="server" OnSelectedIndexChanged="ddlsoluong_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Giá</td>
                <td class="auto-style28">
                    <asp:Label ID="lbGia" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style28">
                    <asp:Label ID="lbThongBao" runat="server" Font-Bold="True" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Button ID="btnMua" runat="server" CssClass="btnThem" Text="Mua" Height="40px" Width="65px" OnClick="Button1_Click"/>
                 </td>
            </tr>
        </table>
        </div>
</asp:Content>

