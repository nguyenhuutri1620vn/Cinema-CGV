<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitietphim.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Chi tiết phim
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            width: 188px;
        }
        .auto-style26 {
            width: 75%;
            height: 328px;
        }
        .auto-style27 {
            height: 81px;
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
            align-items: center;
        }
        .auto-style28 {
            height: 25px;
            width: 537px;
        }
        .auto-style29 {
            width: 537px;
        }
        .auto-style30 {
            height: 17px;
            width: 537px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
    <div class="col-main">
        <table class="auto-style26">
            <tr>
                <td class="auto-style25" rowspan="8">
                    <asp:Image ID="HinhAnh" runat="server" Height="227px" Width="187px" CssClass=".products-grid--max-4-col.products-grid .product-image img"/>
                </td>
                <td class="auto-style29">
                    <asp:Label ID="lbTenPhim" runat="server" Font-Bold="True" Font-Size="18pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Đạo diễn: &nbsp;<asp:Label ID="lbdaodien" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">Diễn viên:
                    <asp:Label ID="lbdienvien" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">Thể loại:
                    <asp:Label ID="lbloaiphim" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Quốc gia:
                    <asp:Label ID="lbqg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Thời lượng:
                    <asp:Label ID="lbThoiluong" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">
                    <asp:Label ID="lbMota" runat="server"></asp:Label>
                </td>
            </tr>            
            <tr>
                <td class="auto-style29">
                    <asp:Button ID="btnThem" runat="server" CssClass="btnThem" Text="Mua vé" Height="41px" Width="96px" OnClick="btnThem_Click" />
                &nbsp;<asp:Label ID="lbid" runat="server"></asp:Label>
                </td>
            </tr>            
            <tr>
                <td class="auto-style27" colspan="2">

                    <asp:Label ID="lbChiTiet" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
    </div>
      </div>
</asp:Content>

