using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TaiKhoan"] != null)
        {
            lbTenDN.Visible = true;
            lbTenDN.Text = "Xin chào: " + Session["TaiKhoan"].ToString();
            dangnhapdangxuat.Visible = false;
            thoat.Visible = true;
        }
        else
        {
            lbTenDN.Text = "";
            lbTenDN.Visible = false;
            dangnhapdangxuat.Visible = true;
            thoat.Visible = false;
        }
    }

    protected void lbtThoat_Click(object sender, EventArgs e)
    {
        Session["TaiKhoan"] = null;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["TaiKhoan"] != null)
        {
            String a = Session["TaiKhoan"].ToString();
            Response.Redirect("~/thongtincanhan.aspx?TaiKhoan="+a);
        }
        else
        {
            Response.Redirect("~/dangnhap.aspx");
        }
    }
}
