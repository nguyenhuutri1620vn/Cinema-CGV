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
        string a = Request.QueryString["IdTinTuc"].ToString().Trim();
        string sql = "SELECT * FROM TinTucPhim Where IdTinTuc='" + a + "'";
        XLDL run = new XLDL();
        DataTable dt = run.GetData(sql);
        lbTenTinTuc.Text = dt.Rows[0][1].ToString();
        string img = dt.Rows[0][2].ToString();
        HinhAnh.ImageUrl = "~/img/" + img;
        lbNoiDung.Text = dt.Rows[0][3].ToString();
    }
}