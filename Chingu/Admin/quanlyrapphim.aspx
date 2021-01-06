<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="quanlyrapphim.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Quản lý rạp phim
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
    <h2>QUẢN LÝ RẠP PHIM</h2>
       
    <asp:GridView ID="quanlyrap" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" OnRowCancelingEdit="quanlyrap_cancel" OnRowDataBound="quanlyrap_RowDataBound" OnRowDeleting="quanlyrap_deleting" OnRowEditing="quanlyrap_edit" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="IdRap" HorizontalAlign="Justify" OnRowUpdating="quanlyrap_RowUpdating" AllowPaging="True" OnPageIndexChanging="quanlyrap_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Mã rạp">
                <EditItemTemplate>
                    <asp:TextBox ID="txtmarap" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("IdRap") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="TenRap" HeaderText="Tên rạp" />
            <asp:BoundField DataField="Diachi" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="SoChoNgoi" HeaderText="Số chỗ ngồi" />
            <asp:BoundField DataField="SDT" HeaderText="SĐT" />
            <asp:TemplateField HeaderText="Hình ảnh">
                <EditItemTemplate>
                    <asp:FileUpload ID="FUanh" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="16px" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="16px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:GridView>
         <p>
            <asp:Button ID="Button1" runat="server" Text="THÊM RẠP" CssClass="btnmua" OnClick="Button1_Click"/></p>
        </div>
</asp:Content>

