using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connect;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }
    protected void btnLich_Click1(object sender, ImageClickEventArgs e)
    {
       if(Calendar1.Visible)
       {
            Calendar1.Visible =false;
       }
       else
       {
            Calendar1.Visible = true;
       }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtLich.Text = Calendar1.SelectedDate.ToString("d");
        Calendar1.Visible = false;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if(e.Day.IsOtherMonth || e.Day.IsWeekend)
        {
            e.Day.IsSelectable = false;
        }    
    }



    protected void btnThem_Click(object sender, EventArgs e)
    {
        string str1 = @"Select 1 from NgayChieu Where IdNgayChieu=N'" + txtIdNgayChieu.Text + "'";
        XLDL run = new XLDL();
        if (run.GetData(str1).Rows.Count > 0)
        {
            lbthongbao.Text = "Ngày chiếu đã có";
            txtIdNgayChieu.Focus();
        }
        else
        {
            string _idnc = txtIdNgayChieu.Text;
            string _idphim = ddlPhim.SelectedValue;
            string _idrap = ddlRap.SelectedValue;
            string _ngaychieu = txtLich.Text;
            string _gio = txtGio.Text;
            string duoi = ":00:00";
            string _time=""+_gio+""+duoi+"";
            string _gia = txtGia.Text;
            string strSQL = "insert into NgayChieu values ('" + _idnc + "', '" + _idphim + "', '" + _idrap + "', '" + _ngaychieu + "','" + _gio +"'," + _gia + ")";
            run.Execute(strSQL);
            lbthongbao.Text = "Thêm ngày chiếu thành công ^^";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("quanlyngaychieu.aspx");

    }
}