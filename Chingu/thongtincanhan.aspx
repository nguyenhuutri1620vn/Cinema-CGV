<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thongtincanhan.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Thông tin cá nhân
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <style>
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
        .auto-style25 {
            height: 18px;
        }
        .auto-style26 {
            height: 19px;
        }
        .auto-style27 {
            height: 20px;
        }
        .auto-style28 {
            height: 21px;
        }
        .auto-style29 {
            height: 22px;
        }
        .auto-style30 {
            height: 28px;
        }
    </style>
    <div class="main">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" Text="THÔNG TIN CÁ NHÂN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Button ID="btndmk" runat="server" CssClass="btn" Height="25px" Text="ĐỔI MẬT KHẨU" Width="80%" OnClick="btndmk_Click"  />
                </td>
                <td class="auto-style28">
                    Tên</td>
                <td>
                    <asp:Label ID="lbten" runat="server"></asp:Label>
                    <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/news.png" OnClick="ImageButton1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Button ID="btntt" runat="server" CssClass="btn" Height="25px" Text="THÔNG TIN CÁ NHÂN" Width="80%" OnClick="btntt_Click" />
                </td>
                <td class="auto-style29">
                    Ngày sinh</td>
                <td class="auto-style27">
                    <asp:Label ID="lbngaysinh" runat="server"></asp:Label>
                    <asp:TextBox ID="txtns" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/news.png" OnClick="ImageButton2_Click" />
                </td>
            </tr>
             <tr>
                <td class="auto-style30"></td>
                <td class="auto-style30">
                    Giới tính</td>
                <td class="auto-style30">
                    <asp:Label ID="lbgt" runat="server"></asp:Label>
                    <asp:DropDownList ID="ddlgt" runat="server">
                        <asp:ListItem Value="1">Nam</asp:ListItem>
                        <asp:ListItem Value="0">Nữ</asp:ListItem>
                    </asp:DropDownList>
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/news.png" OnClick="ImageButton3_Click" />
                 </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style13">
                    Khu vực</td>
                <td class="auto-style13">
                    <asp:Label ID="lbkv" runat="server">txtkv</asp:Label>
                    <asp:TextBox ID="txtkv" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/img/news.png" OnClick="ImageButton4_Click" />
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="lbThongBao" runat="server" Font-Size="13pt" ForeColor="#CC0000"></asp:Label>
                </td>
                <td></td>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="btn" Height="40px"  Text="OK" Width="85px" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

