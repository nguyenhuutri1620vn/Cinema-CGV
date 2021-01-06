<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitiettintuc.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Chi tiết tin tức
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
     <style type="text/css">
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
         .auto-style25 {
             height: 38px;
             width: 165px;
         }
         .auto-style26 {
             height: 143px;
             width: 165px;
         }
         .auto-style27 {
             width: 100%;
             height: 325px;
         }
         .auto-style28 {
             width: 165px;
         }
        </style>
    <div class="main">
        <table class="auto-style27">
            
            <tr>
                <td class="auto-style26">
                    <asp:Image ID="HinhAnh" runat="server" Height="296px" Width="228px" ImageAlign="Baseline" />
                </td>
                <td>
                    <asp:Label ID="lbTenTinTuc" runat="server" BorderStyle="Outset" Font-Bold="True" Font-Size="20pt"></asp:Label>
                    <br />
                    <asp:Label ID="lbNoiDung" runat="server"></asp:Label>
                </td>
            </tr>
          
        </table>
       </div>
</asp:Content>

