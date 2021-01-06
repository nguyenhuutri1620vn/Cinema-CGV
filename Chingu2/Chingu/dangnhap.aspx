<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
ĐĂNG NHẬP
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style30 {
            color: #ffffff;
            border-radius: 4px;
            cursor: pointer;
            text-transform: uppercase;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 8px 0;
            padding: 14px 20px;
            background: #e71a0f;
        }
        .auto-style31 {
            height: 33px;
        }
        .auto-style32 {
            width: 90px;
        }
        .auto-style33 {
            color: #ffffff;
            border-radius: 4px;
            cursor: pointer;
            text-transform: uppercase;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 8px 0;
            padding: 14px 20px;
            background-color: #e71a0f;
        }
        .auto-style34 {
            height: 17px;
            width: 233px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <link href="Theme/StyleSheet.css" rel="stylesheet" />
    <div class="main">
    <div class="col-main">
         <div class="category-product">
             <table class="auto-style2">
                 <tr>
                     <td class="auto-style32">
                         <asp:Button ID="aDangNhap" runat="server" CssClass="auto-style30" Height="45px" Text="ĐĂNG NHẬP" Width="254px"/>
                     </td>
                     <td class="auto-style34">
                         <asp:Button ID="aDangKy" runat="server" CssClass="auto-style30" Height="45px" Text="ĐĂNG KÝ" Width="246px" OnClick="aDangKy_Click"/></td>
                 </tr>
                 <tr>
                     <td class="auto-style1" colspan="2"><strong>Tài khoản</strong></td>
                 </tr>
                 <tr>
                     <td class="auto-style7" colspan="2">
                         <asp:TextBox ID="txttaikhoan" runat="server" Width="499px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style32"><strong>Mật khẩu</strong></td>
                     <td class="auto-style34"></td>
                 </tr>
                 <tr>
                     <td class="auto-style31" colspan="2">
                         <asp:TextBox ID="txtMatkhau" runat="server" Width="497px" TextMode="Password"></asp:TextBox>
                     </td>
                 </tr>
                   <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="#e71a0f" Font-Size="Larger" ></asp:Label>

                 <tr>
                     <td class="auto-style1" colspan="2">
                         <asp:Button id="Btndangnhap" Cssclass="auto-style33" text="ĐĂNG NHẬP" runat="server" OnClick="Btndangnhap_Click" Width="506px"/></td>
                 </tr>  
             </table>
        </div>   
        </div>
</div>

</asp:Content>
