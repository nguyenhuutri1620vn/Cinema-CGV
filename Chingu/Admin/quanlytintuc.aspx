<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="quanlytintuc.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Quản lý tin tức
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
        <h2>QUẢN LÝ TIN TỨC</h2>
        <asp:GridView ID="quanlytintuc" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="Vertical" RowHeaderColumn="TenTinTuc" OnRowDeleting="quanlytintuc_RowDeleting" DataKeyNames="IdTinTuc" OnRowCancelingEdit="quanlytintuc_RowCancelingEdit" OnRowDataBound="quanlytintuc_RowDataBound" OnRowEditing="quanlytintuc_RowEditing" OnRowUpdating="quanlytintuc_RowUpdating" AllowPaging="True" OnPageIndexChanging="quanlytintuc_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Mã tin tức">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("IdTinTuc") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="TenTinTuc" HeaderText="Tên tin tức" />
                <asp:TemplateField HeaderText="Hình ảnh minh họa">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FUanh" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="200px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Chức năng" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        <p>
        <asp:Button ID="Button1" runat="server" Text="Thêm tin tức" CssClass="btnmua" OnClick="Button1_Click" />
            </p>
        </div>
</asp:Content>

