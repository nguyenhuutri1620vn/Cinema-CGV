<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="quanlyngaychieu.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
Quản lý ngày chiếu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="main">
    <h2>QUẨN LÝ CHIẾU PHIM</h2>
        <asp:GridView ID="quanlyngaychieu" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" Width="546px" DataKeyNames="IdNgayChieu" OnRowDeleting="quanlyngaychieu_RowDeleting" OnRowCancelingEdit="quanlyngaychieu_RowCancelingEdit" OnRowDataBound="quanlyngaychieu_RowDataBound" OnRowEditing="quanlyngaychieu_RowEditing" OnRowUpdating="quanlyngaychieu_RowUpdating" OnPageIndexChanging="quanlyngaychieu_PageIndexChanging" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Mã ngày chiếu">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("IdNgayChieu") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên phim">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlphim" runat="server" DataSourceID="SqlDataSource2" DataTextField="idPhim" DataValueField="idPhim">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyRapPhim2ConnectionString4 %>" SelectCommand="SELECT [idPhim] FROM [Phim]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("IdPhim") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên rạp">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlrap" runat="server" DataSourceID="SqlDataSource1" DataTextField="IdRap" DataValueField="IdRap">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyRapPhim2ConnectionString3 %>" SelectCommand="SELECT [IdRap] FROM [RapChieuPhim]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("IdRap") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NgayChieu" HeaderText="Ngày chiếu" />
                <asp:BoundField DataField="Thoigian" HeaderText="Thời gian" />
                <asp:BoundField DataField="Gia" HeaderText="Giá" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Chức năng" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        <br />
        <p>
            <asp:Button ID="Button1" runat="server" Text="THÊM NGÀY CHIẾU" CssClass="btnmua" OnClick="Button1_Click" /></p>
        </div>
</asp:Content>

