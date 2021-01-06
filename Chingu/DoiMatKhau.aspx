<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DoiMatKhau.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Đổi mật khẩu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            width: 276px;
        }
        .auto-style26 {
            width: 276px;
            height: 26px;
        }
        .auto-style27 {
            height: 26px;
        }
        .auto-style28 {
            width: 191px;
        }
        .auto-style29 {
            height: 26px;
            width: 191px;
        }
        .btn {
    border-style: none;
    background-color: #bd1919;
    display: inline-block;
    color: #FFFFFF;
    font-size: 13px;
    font-weight: normal;
    font-family: "Helvetica Neue", Verdana, Arial, sans-serif;
    text-align: center;
    text-transform: uppercase;
    vertical-align: middle;
    white-space: nowrap;
    align-items: center;
}
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Enabled="False" Height="50px" Text="ĐỔI MẬT KHẨU" Width="100%" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Button ID="Button2" runat="server" CssClass="btn" Height="25px" Text="ĐỔI MẬT KHẨU" Width="80%" OnClick="Button2_Click" />
                </td>
                <td class="auto-style28">
                    <asp:Label ID="Label1" runat="server" Text="Mật khẩu cũ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcu" runat="server" Width="247px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Button ID="Button3" runat="server" CssClass="btn" Height="25px" Text="THÔNG TIN CÁ NHÂN" Width="80%" OnClick="Button3_Click" />
                </td>
                <td class="auto-style29">
                    <asp:Label ID="Label2" runat="server" Text="Mật khẩu mới"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtmoi" runat="server" Width="247px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style26"></td>
                <td class="auto-style29">
                    <asp:Label ID="Label3" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
                 </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtmoii" runat="server" Width="247px" TextMode="Password"></asp:TextBox>
                 </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbThongBao" runat="server" Font-Size="13pt" ForeColor="#CC0000"></asp:Label>
                </td>
                <td></td>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="btn" Height="40px" OnClick="Button4_Click" Text="OK" Width="85px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

