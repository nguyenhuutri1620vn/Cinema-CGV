<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangky.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    ĐĂNG KÝ
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <style type="text/css">
        .auto-style30 {
            color: #ffffff;
            border-radius: 4px;
            cursor: pointer;
            text-transform: uppercase;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 8px 0;
            padding: 14px 20px;
            background: #e71a0f;
        }
        .auto-style36 {
        }
        .auto-style37 {
            width: 96px;
        }
        .auto-style39 {
            width: 511px;
            border-style: none;
            border-color: inherit;
            border-width: medium;
        }
        .auto-style40 {
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
        .auto-style43 {
            margin-bottom: 0px;
        }
        .auto-style44 {
            height: 14px;
        }
        .auto-style45 {
            height: 35px;
        }
        </style>
    <div class="main">
    <div class="col-main">
    <div class="auto-style41">
        <div class="sub-category">
			<ul>
				<li>
				</li>
			</ul>
		</div>
         <div class="category-product">
             <table class="auto-style36">
                <tr>
                     <td class="auto-style37">
                         <asp:Button ID="aDangNhap" runat="server" CssClass="auto-style24" Height="45px" Text="ĐĂNG NHẬP" Width="251px" OnClick="aDangNhap_Click"/>
                     </td>
                     <td class="auto-style39">
                         <asp:Button ID="aDangKy" runat="server" CssClass="auto-style30" Height="45px" Text="ĐĂNG KÝ" Width="231px"/></td>
                 </tr>
                 <tr>
                     <td class="auto-style1" colspan="2">Tài khoản</td>
                 </tr>
                 <tr>
                     <td class="auto-style1" colspan="2">
                         <asp:TextBox ID="txttaikhoan" runat="server" Width="475px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1" colspan="2">Tên</td>
                 </tr>
                 <tr>
                     <td class="auto-style7" colspan="2">
                         <asp:TextBox ID="txtten" runat="server" Width="477px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1" colspan="2">
                         Mật khẩu</td>
                 </tr>
                 <tr>
                     <td class="auto-style1" colspan="2">
                         <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Width="476px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style45" colspan="2">
                         Ngày sinh:&nbsp;
                         <asp:DropDownList ID="ngay" runat="server">
                             <asp:ListItem>1</asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                             <asp:ListItem>3</asp:ListItem>
                             <asp:ListItem>4</asp:ListItem>
                             <asp:ListItem>5</asp:ListItem>
                             <asp:ListItem>6</asp:ListItem>
                             <asp:ListItem>7</asp:ListItem>
                             <asp:ListItem>8</asp:ListItem>
                             <asp:ListItem>9</asp:ListItem>
                             <asp:ListItem>10</asp:ListItem>
                             <asp:ListItem>11</asp:ListItem>
                             <asp:ListItem>12</asp:ListItem>
                             <asp:ListItem>13</asp:ListItem>
                             <asp:ListItem>14</asp:ListItem>
                             <asp:ListItem>15</asp:ListItem>
                             <asp:ListItem>16</asp:ListItem>
                             <asp:ListItem>17</asp:ListItem>
                             <asp:ListItem>18</asp:ListItem>
                             <asp:ListItem>19</asp:ListItem>
                             <asp:ListItem>20</asp:ListItem>
                             <asp:ListItem>21</asp:ListItem>
                             <asp:ListItem>22</asp:ListItem>
                             <asp:ListItem>23</asp:ListItem>
                             <asp:ListItem>24</asp:ListItem>
                             <asp:ListItem>25</asp:ListItem>
                             <asp:ListItem>26</asp:ListItem>
                             <asp:ListItem>27</asp:ListItem>
                             <asp:ListItem>28</asp:ListItem>
                             <asp:ListItem>29</asp:ListItem>
                             <asp:ListItem>30</asp:ListItem>
                             <asp:ListItem>31</asp:ListItem>
                         </asp:DropDownList>
&nbsp;Tháng:
                         <asp:DropDownList ID="thang" runat="server">
                             <asp:ListItem>1</asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                             <asp:ListItem>3</asp:ListItem>
                             <asp:ListItem>4</asp:ListItem>
                             <asp:ListItem>5</asp:ListItem>
                             <asp:ListItem>6</asp:ListItem>
                             <asp:ListItem>7</asp:ListItem>
                             <asp:ListItem>8</asp:ListItem>
                             <asp:ListItem>9</asp:ListItem>
                             <asp:ListItem>10</asp:ListItem>
                             <asp:ListItem>11</asp:ListItem>
                             <asp:ListItem Value="12"></asp:ListItem>
                         </asp:DropDownList>
&nbsp; Năm:
                         <asp:TextBox ID="nam" runat="server" Width="65px"></asp:TextBox>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style44" colspan="2">
                         Giới tính :<asp:RadioButtonList ID="rdbgioitinh" runat="server" CellPadding="0" CellSpacing="0" CssClass="auto-style43" RepeatDirection="Horizontal" >
                             <asp:ListItem Value="1" >Nam</asp:ListItem>
                             <asp:ListItem Value="0">Nữ</asp:ListItem>
                         </asp:RadioButtonList>
&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style13" colspan="2">
                         Khu vực</td>
                 </tr>
                 <tr>
                     <td class="auto-style12" colspan="2">
                         <asp:TextBox ID="txtkhuvuc" runat="server" Width="476px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1" colspan="2">
                         <asp:CheckBox ID="CheckBox1" runat="server" />
&nbsp;Tôi đồng ý với điều khoản sử dụng của cgv<br />
                         <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="#e71a0f" Font-Size="Larger" ></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1" colspan="2">
                         <asp:Button id="Btndangky" text="ĐĂNG KÝ" CssClass="auto-style40" runat="server" OnClick="Btndangky_Click" Width="481px" />
                     </td>
                 </tr>
             </table>
        </div>   
    </div>
        </div>
</div>

</asp:Content>
