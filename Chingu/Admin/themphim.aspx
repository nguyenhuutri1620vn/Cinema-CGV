<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="themphim.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
QUẢN LÝ PHIM
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .btnmua {
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
    align-items: center;
}
        .auto-style3 {
            width: 96%;
            height: 851px;
            margin-left: 336px;
            margin-bottom: 101px;
        }
        .auto-style42 {
            height: 8px;
            margin-left: 3px;
            margin-top: 10px;
        }
        .auto-style44 {
            width: 233px;
            height: 28px;
        }
        .auto-style45 {
            height: 28px;
        }
        .auto-style46 {
            width: 233px;
            height: 32px;
        }
        .auto-style47 {
            height: 32px;
        }
        .auto-style48 {
            width: 233px;
            height: 29px;
        }
        .auto-style49 {
            height: 29px;
        }
        .auto-style50 {
            width: 233px;
            height: 27px;
        }
        .auto-style51 {
            height: 27px;
        }
        .auto-style52 {
            width: 233px;
            height: 26px;
        }
        .auto-style53 {
            height: 26px;
        }
        .auto-style54 {
            width: 233px;
            height: 38px;
        }
        .auto-style55 {
            height: 38px;
        }
        .auto-style56 {
            width: 233px;
            height: 31px;
        }
        .auto-style57 {
            height: 31px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
    <h1 class="auto-style42">THÊM PHIM</h1>
         <p><asp:Button ID="Button1" runat="server" Text="QUAY LẠI" CssClass="btnmua" OnClick="Button1_Click" /></p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style44">Mã phim</td>
                <td class="auto-style45">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style46">Tên phim</td>
                <td class="auto-style47">
                    <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">Loại phim</td>
                <td class="auto-style57">
                    <asp:DropDownList ID="ddlloai" runat="server" Height="22px" Width="127px">
                        <asp:ListItem Value="1">Hành động</asp:ListItem>
                        <asp:ListItem Value="2">Tâm lý</asp:ListItem>
                        <asp:ListItem Value="3">Tình cảm</asp:ListItem>
                        <asp:ListItem Value="4">Siêu nhiên</asp:ListItem>
                        <asp:ListItem Value="5">Khoa học viên tưởng</asp:ListItem>
                        <asp:ListItem Value="6">Hoạt hình</asp:ListItem>
                        <asp:ListItem Value="7">Tội phạm</asp:ListItem>
                        <asp:ListItem Value="8">Heo</asp:ListItem>
                        <asp:ListItem Value="9">Kinh dị</asp:ListItem>
                        <asp:ListItem Value="10">Hài hước</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td class="auto-style50">Quốc gia</td>
                <td class="auto-style51">
                    <asp:DropDownList ID="ddlqg" runat="server" Height="22px" Width="126px">
                        <asp:ListItem Value="1">Việt Nam</asp:ListItem>
                        <asp:ListItem Value="2">Hàn Quốc</asp:ListItem>
                        <asp:ListItem Value="3">Nhật Bản</asp:ListItem>
                        <asp:ListItem Value="4">Trung Quốc</asp:ListItem>
                        <asp:ListItem Value="5">Mĩ</asp:ListItem>
                        <asp:ListItem Value="6">Úc</asp:ListItem>
                        <asp:ListItem Value="7">Ấn Độ</asp:ListItem>
                        <asp:ListItem Value="8">Thái Lan</asp:ListItem>
                        <asp:ListItem Value="9">Khác</asp:ListItem>
                    </asp:DropDownList>
                 </td>
               
            </tr>
            <tr>
                <td class="auto-style48">Đạo diễn</td>
                <td class="auto-style49">
                    <asp:TextBox ID="txtdd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style48">Diễn viên</td>
                <td class="auto-style49">
                    <asp:TextBox ID="txtdv" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style48">Thời lượng</td>
                <td class="auto-style49">
                    <asp:TextBox ID="txttl" runat="server"></asp:TextBox>
                 </td>
               
            </tr>
            <tr>
                <td class="auto-style46">Mô tả</td>
                <td class="auto-style47">
                    <asp:TextBox ID="txtmt" runat="server" Width="306px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style52">Chi Tiết</td>
                <td class="auto-style53">
                    <asp:TextBox ID="txtct" runat="server" Height="99px" TextMode="MultiLine" Width="307px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style48">Hình ảnh</td>
                <td class="auto-style49">
                    <asp:FileUpload ID="FU" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style54">
        <asp:Label ID="lbThongBao" runat="server" ForeColor="#CC0000"></asp:Label>
   
                </td>
                <td class="auto-style55">
                    <asp:Button ID="btnmua" runat="server" Text="Thêm phim" CssClass="btnmua" OnClick="btnmua_Click" />
                </td>
            </tr>
        </table>
       
       </div>  
</asp:Content>

