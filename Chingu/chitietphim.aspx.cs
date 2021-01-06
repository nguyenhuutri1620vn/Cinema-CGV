using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connect;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbid.Visible = false;
        string a = Request.QueryString["IdPhim"].ToString().Trim();
        string sql = "SELECT * FROM Phim Where IdPhim='" + a + "'";
        XLDL run = new XLDL();
        DataTable dt = run.GetData(sql);
        lbid.Text = a;
        lbTenPhim.Text = dt.Rows[0][3].ToString();
        lbdaodien.Text = dt.Rows[0][4].ToString();
        lbdienvien.Text = dt.Rows[0][5].ToString();
        string b = dt.Rows[0][1].ToString();
        if (b == "1")
            b = "Hành động";
        else if (b == "2")
            b = "Tâm lý";
        else if (b == "3")
            b = "Tình cảm";
        else if (b == "4")
            b = "Siêu nhiên";
        else if (b == "5")
            b = "Khoa học viễn tưởng";
        else if (b == "6")
            b = "Hoạt hình";
        else if (b == "7")
            b = "Tội phạm";
        else if (b == "8")
            b = "Heo";
        else if (b == "9")
            b = "Kinh dị";
        else if (b == "10")
            b = "Hài hước";
        else b="";
        lbloaiphim.Text = b;
        string c = dt.Rows[0][2].ToString();
        if (c == "1")
            c = "Việt Nam";
        else if (c == "2")
            c = "Hàn Quốc";
        else if (c == "3")
            c = "Nhật Bản";
        else if (c == "4")
            c = "Trung Quốc";
        else if (c == "5")
            c = "Mĩ";
        else if (c == "6")
            c = "Úc";
        else if (c == "7")
            c = "Ấn Độ";
        else if (c == "8")
            c = "Thái Lan";
        else c = "Khác";
        lbqg.Text = c;
        lbThoiluong.Text = dt.Rows[0][6].ToString();
        lbMota.Text = dt.Rows[0][7].ToString();
        lbChiTiet.Text = dt.Rows[0][8].ToString();
        string img = dt.Rows[0][9].ToString();
        HinhAnh.ImageUrl = "~/img/" + img;
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        String a = lbid.Text;
        Session["IdPhim"]=a;
        Response.Redirect("muave.aspx?IdPhim=" + a);
    }
}