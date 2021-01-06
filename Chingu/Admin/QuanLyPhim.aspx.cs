using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connect;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            ListPhim();
    }

 
    private void ListPhim()
    {
        XLDL runSect = new XLDL();
        quanlyphim.DataSource = runSect.GetData("SELECT * FROM Phim");
        quanlyphim.DataBind();
    }
    protected void quanlyphim_Editing(object sender, GridViewEditEventArgs e)
    {
        quanlyphim.EditIndex = e.NewEditIndex;
        ListPhim();
    }
    public string LoaiPhim(object s)
    {
        int index = (int)s;
        if (index == 1)
            return "Hành động";
        else if (index == 2)
            return "Tâm lý";
        else if (index == 3)
            return "Tình cảm";
        else if (index == 4)
            return "Siêu nhiên";
        else if (index == 5)
            return "Khoa học viễn tưởng";
        else if (index == 6)
            return "Hoạt hình";
        else if (index == 7)
            return "Tội phạm";
        else if (index == 8)
            return "heo";
        else if (index == 9)
            return "Kịnh dị";
        else if (index == 10)
            return "Hài hước";
        return "";
    }
    public string DisplayQG(object s)
    {
        int index = (int)s;
        if (index == 1)
            return "Việt Nam";
        else if (index == 2)
            return "Hàn quốc";
        else if (index == 3)
            return "Nhật Bản";
        else if (index == 4)
            return "Trung Quốc";
        else if (index == 5)
            return "Mĩ";
        else if (index == 6)
            return "Úc";
        else if (index == 7)
            return "Ấn độ";
        else if (index == 8)
            return "Thái Lan";
        return "Khác";
    }
    protected void quanlyphim_Update(object sender, GridViewUpdateEventArgs e)
    {
        string _idphim = quanlyphim.DataKeys[e.RowIndex].Value.ToString();
        string _tenphim = ((TextBox)quanlyphim.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string _loaiphim = ((DropDownList)quanlyphim.Rows[e.RowIndex].FindControl("ddlloaiphim")).SelectedValue;
        string _quocgia = ((DropDownList)quanlyphim.Rows[e.RowIndex].FindControl("ddlquocgia")).SelectedValue;
        string _daodien = ((TextBox)quanlyphim.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string _dienvien = ((TextBox)quanlyphim.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        int _thoiluong = int.Parse((quanlyphim.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text);
        string _mota = ((TextBox)quanlyphim.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string _chitiet = ((TextBox)quanlyphim.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        FileUpload anh = (quanlyphim.Rows[e.RowIndex].FindControl("FileUploadhinhanh") as FileUpload);
        string url = (anh.FileName);
        XLDL run = new XLDL();
        string lennhSql = "update Phim set TenPhim=N'" + _tenphim + "',"
        + "IdLoaiPhim=" + _loaiphim + ","
        + "IdQG=" + _quocgia + ","
        + "DaoDien=N'" + _daodien + "',"
        + "DienVien=N'" + _dienvien + "',"
        + "ThoiLuong=" + _thoiluong + ","
        + "MoTa=N'" + _mota + "',"
        + "ChiTiet=N'" + _chitiet + "',"
        + "HinhAnh='" + url + "'"
        + "where IdPhim='" + _idphim + "'";
        run.Execute(lennhSql);
        quanlyphim.EditIndex = -1;
        ListPhim();
    }


    protected void quanlyphim_delete(object sender, GridViewDeleteEventArgs e)
    {
        string _idphim = quanlyphim.DataKeys[e.RowIndex].Value.ToString();
        string strSQL = "DELETE FROM Phim Where IdPhim='" + _idphim + "'";
        XLDL run = new XLDL();
        run.Execute(strSQL);
        ListPhim();
    }

    protected void quanlyphim_dataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && quanlyphim.EditIndex == -1)
        {
            ((LinkButton)e.Row.Cells[10].Controls[2]).OnClientClick = "return confirm('Bạn có chắc chắn muốn xóa không ?');";
        }
    }

    protected void quanlyphim_cancel(object sender, GridViewCancelEditEventArgs e)
    {
        quanlyphim.EditIndex = -1;
        ListPhim();
    }

    protected void quanlyphim_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        quanlyphim.PageIndex = e.NewPageIndex;
        ListPhim();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("themphim.aspx");

    }
}