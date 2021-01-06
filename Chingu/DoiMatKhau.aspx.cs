using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connect;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string a =Request.QueryString["TaiKhoan"].ToString().Trim();
        string sql = "SELECT * FROM KhachHang Where TaiKhoan='" + a + "'";

        XLDL run = new XLDL();
        DataTable dt = run.GetData(sql);
        string p = dt.Rows[0][3].ToString();
        if (txtcu.Text == p)
        {
            if (txtmoi.Text == txtcu.Text)
            {
                lbThongBao.Text = "Mật khẩu mới không được trùng với mật khẩu cũ";
            }
            else if (txtmoi.Text != txtmoii.Text)
            {
                lbThongBao.Text = "Mật khẩu mới không trùng khớp với nhau";
            }
            else if (txtmoii.Text == txtmoi.Text && txtmoi != null)
            {
                string sql2 = "update KhachHang set MatKhau='" + txtmoi.Text + "' where TaiKhoan='" + a + "'";
                run.Execute(sql2);
                lbThongBao.Text = "Đổi mật khẩu thành công";
            }
        }
        else
        {
            lbThongBao.Text = "Sai mật khẩu";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string a = Request.QueryString["TaiKhoan"].ToString().Trim();
        Response.Redirect("~/thongtincanhan.aspx?Taikhoan="+a);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}