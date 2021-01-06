<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="quanlynhanvien.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
QUẢN LÝ NHÂN VIÊN
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
        <h1 class="auto-style5">QUẢN LÝ NHÂN VIÊN</h1>
        <asp:GridView ID="qlnv" runat="server" AllowPaging="True" AutoGenerateColumns="False" EnableModelValidation="True"  Width="758px" OnRowEditing="qlnv_RowEditing" CssClass="auto-style3" OnRowCancelingEdit="qlnv_RowsCancel" OnRowUpdating="qlnv_RowUpdating" BorderColor="#E71A0F" BorderStyle="Inset" CellPadding="4" DataKeyNames="IdNhanVien" ForeColor="#E71A0F" GridLines="Vertical" OnRowDataBound="qlnv_RowDataBound" OnRowDeleting="qlnv_RowDeleting" OnPageIndexChanging="qlnv_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Mã NV">
                    <ItemTemplate>
                        <asp:Label ID="idNV" runat="server" Text='<%# Eval("IdNhanVien") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="TenNV" HeaderText="Tên" />
                <asp:BoundField DataField="Tuoi" HeaderText="Tuổi" />
                <asp:TemplateField HeaderText="Giới tính">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlgioitinh" runat="server">
                            <asp:ListItem Value="1">Nam</asp:ListItem>
                            <asp:ListItem Value="0">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# DisplayGT(Eval("GioiTinh")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ViTri" HeaderText="Vị trí" />
                <asp:TemplateField HeaderText="TimeWork">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddltimework" runat="server">
                            <asp:ListItem Value="1">Full-time</asp:ListItem>
                            <asp:ListItem Value="0">Part-time</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#  DisplayTW(Eval("ThoiGianLamViec")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Luong" HeaderText="Lương" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Chức năng" SelectText="Xem" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhập" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        
        <br />
        
        <asp:SqlDataSource ID="NhanVien" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyRapPhim2ConnectionString %>" SelectCommand="SELECT * FROM [NhanVien]"></asp:SqlDataSource>
        <asp:Button ID="btnThem" runat="server" Text="THÊM" Height="38px" Width="98px" CssClass="btnThem" OnClick="btnThem_Click"/>
        </div>

</asp:Content>

