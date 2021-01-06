using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connect;
using System.IO;

public partial class Admin_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("quanlytintuc.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str1 = @"Select 1 from TinTucPhim Where TenTinTuc=N'" + txtten.Text + "'";
        XLDL run = new XLDL();
        if (run.GetData(str1).Rows.Count > 0)
        {
            lbThongBao.Text = "Tin tức đã tồn tại.";
            txtten.Focus();
        }
        else
        {
            string ten = txtten.Text;
            string nd = txtnd.Text;
            string anh = Path.GetFileName(FU.FileName);
            string url = Server.MapPath("~") + @"img\" + anh;
            FU.PostedFile.SaveAs(url);
            string sql = "insert into TinTucPhim values('" + ten + "','" + anh + "','" + nd + "')";
            run.Execute(sql);
            lbThongBao.Text = "Thêm tin thành công";
        }
    }
}