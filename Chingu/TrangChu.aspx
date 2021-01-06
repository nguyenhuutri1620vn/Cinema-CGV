<%@ Page Title="CG" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
TRANG CHỦ
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <style>
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
    align-items:center;
}
    </style>
    <div class="main">
    <div class="col-main">
    <div class="page-title cate">
        <h1>Phim Đang Chiếu</h1>
        <div class="sub-category">
			<ul>
				<li>
					<a href="Trangchu.aspx">Phim Sắp Chiếu</a>
				</li>
			</ul>
		</div>
    </div>
</div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="IdPhim" DataSourceID="SqlDataSource1" CellSpacing="40" CssClass="listphim" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" Height="193px" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" style="margin-left: 2px" Width="769px" OnItemCommand="DataList1_ItemCommand" ForeColor="Black" >
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="248px" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' Width="185px" />
            <br />
            <br />
            &nbsp;<asp:Label ID="txtTen" runat="server" Text='<%# Eval("TenPhim") %>' Font-Bold="True" Font-Size="Large" Font-Names="Tahoma" ForeColor="Black" Width="180px" />
            <br />
            <br />
            <asp:Label ID="idphim" runat="server" Text='<%# Eval("IdPhim") %>' Visible="False"></asp:Label>
            <br />
            <br />
            Loại phim:
            <asp:Label ID="IdLoaiPhimLabel" runat="server" Text='<%# DisplayLP(Eval("IdLoaiPhim")) %>' />
            <br />
            <br />
            Thời lượng:
            <asp:Label ID="ThoiLuongLabel" runat="server" Text='<%# Eval("ThoiLuong") %>' />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnMua" runat="server" CssClass="btnThem" Text="Mua vé" Width="85px" />
            <br />
            <br />
        </ItemTemplate>
        <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyRapPhim2ConnectionString7 %>" SelectCommand="SELECT [idPhim], [IdLoaiPhim], [IdQG], [TenPhim], [ThoiLuong], [HinhAnh] FROM [Phim]"></asp:SqlDataSource>
        </div>
</asp:Content>
