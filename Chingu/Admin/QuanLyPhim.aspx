<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="QuanLyPhim.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
QUẢN LÝ PHIM
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <style>
        tr,td{
            border: 1px solid black;
        }
        .auto-style4 {
        height: 38px;
        margin-top: 11px;
        }
        .auto-style5 {
        width: 980px;
        margin-left: 183px;
        margin-right: auto;
        margin-top: 30px;
        margin-bottom: 0;
    }
        .auto-style6 {
            margin-bottom: 0px;
            margin-top: 0px;
        }
        </style>
     <div class="main">
<h1 class="auto-style4">QUẢN LÝ PHIM</h1>
         <p>
         <asp:Button ID="Button1" CssClass="btnmua" runat="server" Text="Thêm phim" OnClick="Button1_Click" />
             </p>
         <br />
         <asp:GridView ID="quanlyphim" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" DataKeyNames="IdPhim" OnRowCancelingEdit="quanlyphim_cancel" OnRowDataBound="quanlyphim_dataBound" OnRowDeleting="quanlyphim_delete" OnRowEditing="quanlyphim_Editing" OnRowUpdating="quanlyphim_Update" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" Height="0px" OnPageIndexChanging="quanlyphim_PageIndexChanging" PageSize="4">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:TemplateField HeaderText="Mã phim">
                     <EditItemTemplate>
                         <asp:TextBox ID="txtIdPhim" runat="server"></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("IdPhim") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="TenPhim" HeaderText="Tên phim" />
                 <asp:TemplateField HeaderText="Loại phim">
                     <EditItemTemplate>
                         <asp:DropDownList ID="ddlloaiphim" runat="server">
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
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label4" runat="server" Text='<%# LoaiPhim(Eval("IdLoaiPhim")) %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Quốc gia">
                     <EditItemTemplate>
                         <asp:DropDownList ID="ddlquocgia" runat="server">
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
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# DisplayQG(Eval("IdQG")) %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="DaoDien" HeaderText="Đạo diễn" />
                 <asp:BoundField DataField="DienVien" HeaderText="Diễn viên" />
                 <asp:BoundField DataField="ThoiLuong" HeaderText="Thời lượng" />
                 <asp:BoundField DataField="MoTa" HeaderText="Mô tả" />
                 <asp:BoundField DataField="ChiTiet" HeaderText="Chi tiết" />
                 <asp:TemplateField HeaderText="Hình ảnh">
                     <EditItemTemplate>
                         <asp:FileUpload ID="FileUploadhinhanh" runat="server" />
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="200px" />
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Chức năng" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
             </Columns>
             <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
             <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
         </asp:GridView>
         <br />
         <br />
  </div>
         </asp:Content>


