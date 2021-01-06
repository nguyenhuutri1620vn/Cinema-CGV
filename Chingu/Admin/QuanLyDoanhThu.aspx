<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="QuanLyDoanhThu.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
QUẢN LÝ DOANH THU
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 650px;
        }
        .auto-style2 {
            width: 837px;
            margin-left: 91px;
        }
        .auto-style3 {
            margin-left: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
    <h2>QUẢN LÝ DOANH THU</h2>
        <asp:GridView ID="quanlydoanhthu" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" OnPageIndexChanging="quanlydoanhthu_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="IdDatVe" HeaderText="Mã" />
                <asp:BoundField DataField="TaiKhoan" HeaderText="Tên tài khoản" />
                <asp:BoundField DataField="IdNgayChieu" HeaderText="Mã ngày chiếu" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                <asp:BoundField DataField="HoaDon" HeaderText="Hóa đơn" />
                <asp:TemplateField HeaderText="Tổng hóa đơn">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        
        </div>
</asp:Content>

