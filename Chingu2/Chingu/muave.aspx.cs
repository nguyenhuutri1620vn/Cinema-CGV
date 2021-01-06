using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connect;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    public static string DatVe="";
    protected void Page_Load(object sender, EventArgs e)
    {
        DatVe = Request.QueryString["IdPhim"].ToString().Trim();
        if (!IsPostBack)
        {

            string a = Request.QueryString["IdPhim"].ToString().Trim(); 
            string sql = "SELECT * FROM NgayChieu Where IdPhim='" + a + "'";
            string sql2 = "SELECT * FROM Phim Where IdPhim='" + a + "'";
            XLDL run = new XLDL();
            DataTable dt = run.GetData(sql);
            DataTable dt2 = run.GetData(sql2);

            IdNgayChieu.Text = dt.Rows[0][0].ToString();
            lbPhim.Text = dt2.Rows[0][3].ToString();
            ddlNgayChieu.DataSource = dt;
            ddlNgayChieu.DataTextField = "NgayChieu";
            ddlNgayChieu.DataValueField = "NgayChieu";
            ddlNgayChieu.DataBind();
            btnMua.OnClientClick = "return confirm ('Mua là phải đi đó nka ^^!');" ;

        }           
    }

    protected void ddlNgayChieu_SelectedIndexChanged(object sender, EventArgs e)
    {
        string date = ddlNgayChieu.SelectedItem.ToString() ;
        DateTime n = DateTime.Parse(date);
        string ngay = n.ToString("yyyy-MM-dd");
        string sql = "SELECT * FROM NgayChieu Where IdPhim='" + DatVe + "' and NgayChieu ='"+date+"'";
        XLDL run = new XLDL();
        DataTable dt = run.GetData(sql);
        int i = 0;
        int dong = dt.Rows.Count;
        ddlThoiGian.Items.Clear();
        while(i<dong)
        {
            string c = dt.Rows[i][4].ToString();
            DateTime time = DateTime.Parse(date);
            string gio = n.ToString("HH:mm");
            ddlThoiGian.Items.Add(c);
            i++;
        }
        string q = ddlThoiGian.SelectedValue;
        string sql1 = "SELECT * FROM NgayChieu Where IdPhim='" + DatVe + "' and NgayChieu ='" + ngay + "' and ThoiGian='"+q+"'";
        DataTable dt2 = run.GetData(sql1);
        string h = dt2.Rows[0][0].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XLDL run = new XLDL();
        int d = int.Parse(ddlsoluong.SelectedValue);
        string q = ddlThoiGian.SelectedValue;
        string p = ddlNgayChieu.SelectedValue;
        string y = lbGia.Text;
        int l = 105000 * d;
        string sql1 = "SELECT * FROM NgayChieu Where IdPhim='" + DatVe + "' and NgayChieu ='" + p + "' and ThoiGian='" + q + "'";
        DataTable dt = run.GetData(sql1);
        string h = dt.Rows[0][0].ToString();
        string z = Session["TaiKhoan"].ToString();

        string DV = "insert into DatVe values ('" + z + "', '" + h + "',"+d+"," + l + ")";
        run.Execute(DV);
        lbThongBao.Text = "Đặt vé thành công ^^!";
        
    }

    protected void ddlsoluong_SelectedIndexChanged(object sender, EventArgs e)
    {
         int d = int.Parse(ddlsoluong.SelectedValue);
        int l = 105000 * d;
        lbGia.Text = l.ToString();
    }
}