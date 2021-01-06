<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="themNhanVien.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Thêm Nhân Viên
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
     <style type="text/css">
        .auto-style36 {
        }
        .auto-style40 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            color: #fff;
            background-color: #e71a0f;
            padding: 14px 20px;
            margin: 8px 0;
            border-radius: 4px;
            cursor: pointer;
            text-transform: uppercase;
        }
           .auto-style101 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            color: #ffffff;
            background-color: #e71a0f;
            padding: 14px 20px;
            margin: 8px 0;
            border-radius: 4px;
            cursor: pointer;
            text-transform: uppercase;
        }
        .auto-style41 {
            left: 0px;
            top: 0px;
        }
        .auto-style44 {
            height: 14px;
             width: 485px;
         }
         .auto-style46 {
             width: 485px;
         }
         .auto-style47 {
             width: 485px;
             height: 17px;
         }
        </style>
    <div class="main">
    <div class="col-main">
    <div class="auto-style41">
         <div class="category-product">
             <table class="auto-style36">
                 <tr>
                     <td>

                         <asp:Button ID="btnlietke" runat="server" CssClass="btnmua" Height="46px" Text="Xem danh sách nhân viên" Width="239px" OnClick="btnlietke_Click" ForeColor="White" />

                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style46">ID nhân viên</td>
                 </tr>
                 <tr>
                     <td class="auto-style46">
                         <asp:TextBox ID="txtidnv" runat="server" Width="475px" Height="25px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style46">Tên nhân viên</td>
                 </tr>
                 <tr>
                     <td class="auto-style46">
                         <asp:TextBox ID="txttennv" runat="server" Width="477px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style46">
                         Tuổi</td>
                 </tr>
                 <tr>
                     <td class="auto-style46">
                         <asp:TextBox ID="txttuoi" runat="server" Width="476px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style44">
                         Giới tính :
                         <asp:DropDownList ID="ddlgioitinh" runat="server">
                             <asp:ListItem Value="1">Nam</asp:ListItem>
                             <asp:ListItem Value="0">Nữ</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style47">
                         Vị trí</td>
                 </tr>
                 <tr>
                     <td class="auto-style46">
                         <asp:TextBox ID="txtvitri" runat="server" Width="476px"></asp:TextBox>
                     </td>
                 </tr>
                  <tr>
                     <td class="auto-style47">
                         Thời gian làm việc</td>
                 </tr>
                 <tr>
                     <td class="auto-style46">
                         <asp:DropDownList ID="ddltimework" runat="server">
                             <asp:ListItem Value="0">Part-time</asp:ListItem>
                             <asp:ListItem Value="1">Full-time</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                 </tr>
                  <tr>
                     <td class="auto-style47">
                         Lương</td>
                 </tr>
                 <tr>
                     <td class="auto-style46">
                         <asp:TextBox ID="txtluong" runat="server" Width="476px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                 <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="#e71a0f" Font-Size="Larger" ></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style46">
                         <asp:Button id="BtnThem" text="LƯU" CssClass="btnmua" runat="server" Width="481px" OnClick="BtnThem_Click" />
                     </td>
                 </tr>
             </table>
        </div>   
    </div>
        </div>
</div>
</asp:Content>

