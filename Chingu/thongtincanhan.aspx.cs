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
        if (!IsPostBack)
        {
            txtten.Visible = false;
            txtns.Visible = false;
            txtkv.Visible = false;
            ddlgt.Visible = false;
        }
        string a = Request.QueryString["TaiKhoan"].ToString().Trim();
        string sql = "SELECT * FROM KhachHang Where TaiKhoan='" + a + "'";
        XLDL run = new XLDL();
        DataTable dt = run.GetData(sql);
        lbten.Text = dt.Rows[0][2].ToString();
        lbngaysinh.Text = dt.Rows[0][4].ToString();
        string gt = dt.Rows[0][5].ToString();

        if (gt == "True")
        {
            gt = "Nam";
        }
        else
        {
            gt = "Nữ";
        }
        lbgt.Text = gt;
        lbkv.Text = dt.Rows[0][6].ToString();
    }
    protected void btntt_Click(object sender, EventArgs e)
    {
        if (Session["TaiKhoan"] != null)
        {
            String a = Session["TaiKhoan"].ToString();
            Response.Redirect("~/thongtincanhan.aspx?TaiKhoan=" + a);
        }
        else
        {
            Response.Redirect("~/dangnhap.aspx");
        }
    }

    protected void btndmk_Click(object sender, EventArgs e)
    {
        if (Session["TaiKhoan"] != null)
        {
            String a = Session["TaiKhoan"].ToString();
            Response.Redirect("~/DoiMatKhau.aspx?TaiKhoan=" + a);
        }
        else
        {
            Response.Redirect("~/dangnhap.aspx");
        }
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (txtten.Visible)
        {
            txtten.Visible = false;
            lbten.Visible = true;
        }
        else
        {
            txtten.Visible = true;
            lbten.Visible = false;
            txtten.Text = lbten.Text;
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        if (txtns.Visible)
        {
            txtns.Visible = false;
            lbngaysinh.Visible = true;
        }
        else
        {
            txtns.Visible = true;
            lbngaysinh.Visible = false;
            txtns.Text = lbngaysinh.Text;
        }
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (ddlgt.Visible)
        {
            ddlgt.Visible = false;
            lbgt.Visible = true;
        }
        else
        {
            ddlgt.Visible = true;
            lbgt.Visible = false;
            
        }
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        if (txtkv.Visible)
        {
            txtkv.Visible = false;
            lbkv.Visible = true;
        }
        else
        {
            txtkv.Visible = true;
            lbkv.Visible = false;
            txtkv.Text = lbkv.Text;
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string a = Request.QueryString["TaiKhoan"].ToString().Trim();
        XLDL run = new XLDL();
        string sql2 = "update KhachHang set Ten=N'" + txtten.Text + "' where TaiKhoan='" + a + "'";
        string sql3 = "update KhachHang set NgaySinh='" + txtns.Text + "' where TaiKhoan='" + a + "'";
        string sql4 = "update KhachHang set GioiTinh=" + ddlgt.SelectedValue + " where TaiKhoan='" + a + "'";
        string sql5 = "update KhachHang set KhuVuc=N'" + txtkv.Text + "' where TaiKhoan='" + a + "'";
        
        if (txtten.Visible == true)
        {
            run.Execute(sql2);
            txtten.Visible = false;
            lbten.Text = txtten.Text;
            lbten.Visible = true;
        }
        else if (txtns.Visible == true)
        {
            run.Execute(sql3);
            txtns.Visible = false;
            lbngaysinh.Text = txtns.Text;
            lbngaysinh.Visible = true;
        }else if (ddlgt.Visible == true)
        {
            run.Execute(sql4);
            ddlgt.Visible = false;
            string gt = ddlgt.SelectedValue;
            if (gt == "1")
            {
                gt = "Nam";
            }
            else
            {
                gt = "Nữ";
            }
            lbgt.Text = gt;
            lbgt.Visible = true;
        }else if (txtkv.Visible==true)
        {
            run.Execute(sql5);
            txtkv.Visible = false;
            lbkv.Text = txtkv.Text;
            lbgt.Visible = true;
        }
        else
        {
            lbThongBao.Text = "Thất bại!";
        }


    }
}