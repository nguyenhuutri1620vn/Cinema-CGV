using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using connect;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuanLyPhim.aspx");
    }

    protected void btnmua_Click(object sender, EventArgs e)
    {
        string str1 = @"Select 1 from Phim Where IdPhim=N'" + txtid.Text + "'";
        XLDL run = new XLDL();
        if (run.GetData(str1).Rows.Count > 0)
        {
            lbThongBao.Text = "Mã phim đã tồn tại.";
            txtid.Focus();
        }
        else
        {
            string id = txtid.Text;
            string ten = txtten.Text;
            int l = int.Parse(ddlloai.SelectedValue);
            int q = int.Parse(ddlqg.SelectedValue);
            string dd = txtdd.Text;
            string dv = txtdd.Text;
            int tl = int.Parse(txttl.Text);
            string mt = txtmt.Text;
            string ct = txtct.Text;
            string anh =Path.GetFileName(FU.FileName);
            string url = Server.MapPath("~") + @"img\" + anh;
            FU.PostedFile.SaveAs(url);
            string sql = "insert into Phim values ('" + id + "'," + l + "," + q + ",'" + ten + "','" + dd + "','" + dv + "'," + tl + ",'" + mt + "','" + ct + "','" + anh  + "')";
            run.Execute(sql);
            lbThongBao.Text = "Thêm phim thành công";
        }
    }
}