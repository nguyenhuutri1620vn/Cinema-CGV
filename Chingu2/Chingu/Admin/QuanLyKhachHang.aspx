<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="quanlykhachhang.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
QUẢN LÝ KHÁCH HÀNG
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
        <h1 >QUẢN LÝ KHÁCH HÀNG</h1>
        <asp:GridView ID="qlkh" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="Inset" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" OnPageIndexChanging="qlkh_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="IdKH" HeaderText="STT" />
                <asp:BoundField DataField="TaiKhoan" HeaderText="Tài khoản" />
                <asp:BoundField DataField="Ten" HeaderText="Tên" />
                <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" />
                <asp:TemplateField HeaderText="Giới tính">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Display(Eval("GioiTinh")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="KhuVuc" HeaderText="Khu vực" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        </div>
</asp:Content>

