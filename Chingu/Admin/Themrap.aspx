<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Themrap.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Thêm rạp
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 3px;
        }
         .auto-style45 {
            width: 96%;
            height: 330px;
            margin-left: 192px;
            margin-bottom: 101px;
        }
        .auto-style46 {
            width: 190px;
        }
        .auto-style47 {
            width: 190px;
            height: 24px;
        }
        .auto-style48 {
            height: 24px;
        }
        .auto-style49 {
            width: 190px;
            height: 23px;
        }
        .auto-style50 {
            height: 23px;
        }
        .auto-style51 {
            width: 190px;
            height: 27px;
        }
        .auto-style52 {
            height: 27px;
        }
        .auto-style53 {
            width: 100%;
            height: 162px;
        }
        .auto-style54 {
            width: 190px;
            height: 26px;
        }
        .auto-style55 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="auto-style45">
    <h2>THÊM RẠP</h2>
    <p>
        <asp:Button ID="Button1" runat="server" Text="QUAY LẠI" CssClass="btnmua" OnClick="Button1_Click"/></p>
    <br />
        <table class="auto-style53">
            <tr>
                <td class="auto-style47">Mã rạp</td>
                <td class="auto-style48">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style47">Tên rạp</td>
                <td class="auto-style48">
                    <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style49">Địa chỉ</td>
                <td class="auto-style50">
                    <asp:TextBox ID="txtdc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style47">Số chỗ ngồi</td>
                <td class="auto-style48">
                    <asp:TextBox ID="txtcn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style51">Số điện thoại</td>
                <td class="auto-style52">
                    <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">Hình ảnh</td>
                <td class="auto-style55">
                    <asp:FileUpload ID="FU" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style46">
    <asp:Label ID="lbthongbao" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="btnThem" Height="39px" OnClick="Button2_Click" Text="Thêm" Width="81px" />
                </td>
            </tr>
        </table>
    <br />
        </div>
</asp:Content>

