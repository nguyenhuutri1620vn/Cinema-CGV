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
        string str1 = @"Select 1 from RapChieuPhim Where IdRap=N'" + txtid.Text + "'";
        XLDL run = new XLDL();
        if (run.GetData(str1).Rows.Count > 0)
        {
            lbthongbao.Text = "Tin tức đã tồn tại.";
            txtid.Focus();
        }
        else
        {
            string id = txtid.Text;
            string ten = txtten.Text;
            string dc = txtdc.Text;
            string sdt = txtsdt.Text;
            int scn =int.Parse(txtcn.Text);
            string anh = Path.GetFileName(FU.FileName);
            string url = Server.MapPath("~") + @"img\" + anh;
            FU.PostedFile.SaveAs(url);
            string sql = "insert into RapChieuPhim values('" + id + "','" + ten + "','" + dc + "'," + scn + ",'" + sdt + "','" + anh + "')";
            run.Execute(sql);
            lbthongbao.Text = "Thêm rạp thành công ^^!";

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("quanlyrapphim.aspx");

    }
}