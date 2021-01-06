<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="themtinttuc.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Thêm tin tức
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 28px;
            margin-left: 0px;
            margin-top: 11px;
        }
        .auto-style7 {
            float: none;
            width: auto;
            padding: 0;
            margin-left: 192px;
        }
        .auto-style8 {
            height: 17px;
        }
        .auto-style9 {
            height: 17px;
            width: 154px;
        }
        .auto-style10 {
            width: 154px;
        }
        .auto-style11 {
            width: 154px;
            height: 38px;
        }
        .auto-style12 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="auto-style7">
        <h2 class="auto-style6">THÊM TIN TỨC</h2>
        <p>
            <asp:Button ID="Button2" runat="server" Text="QUAY LẠI" CssClass="btnmua" OnClick="Button2_Click" />
        </p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style9">Tên tin tức</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtten" runat="server" Width="416px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Nội dung</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtnd" runat="server" Height="120px" TextMode="MultiLine" Width="424px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Hình ảnh</td>
                <td>
                    <asp:FileUpload ID="FU" runat="server" />
                </td>
            </tr>
          <tr>
                <td class="auto-style11">
        <asp:Label ID="lbThongBao" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
                <td class="auto-style12">
                   
                    <asp:Button ID="Button1" runat="server" CssClass="btnThem" Text="Thêm tin tức" Width="144px" OnClick="Button1_Click" />
                   
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        </div>
</asp:Content>

