using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using connect;
public partial class Default2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btndangnhap_Click(object sender, EventArgs e)
    {
        XLDL run = new XLDL();
        try
        {
            DataTable dt = run.GetData("SELECT * FROM KhachHang Where TaiKhoan='" + txttaikhoan.Text + "'and MatKhau='"+txtMatkhau.Text+"'");
            DataTable dt1 = run.GetData("SELECT * FROM Admin Where Username='" + txttaikhoan.Text + "'and Pass='" + txtMatkhau.Text + "'");
            if (dt.Rows.Count > 0)
            {
                Session["TaiKhoan"] = txttaikhoan.Text;
                Btndangnhap.OnClientClick = "return confirm ('Đăng nhập thành công ^^!');";
                Response.Redirect("~/TrangChu.aspx");
            }
            else if (dt1.Rows.Count > 0)
            {

                Session["Username"] = txttaikhoan.Text;
                Response.Redirect("Admin/QuanLyPhim.aspx");
            }
            else 
            {
                lbThongBaoLoi.Text = "Vui lòng nhập tài khoản hoặc mật khẩu";
            }
            
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại !!";
        }
    }

    protected void aDangKy_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dangky.aspx");
    }
}