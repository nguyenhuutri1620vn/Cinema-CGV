using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connect;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ListNgayChieu();
    }
    public void ListNgayChieu()
    {
        XLDL runSect = new XLDL();
        quanlyngaychieu.DataSource = runSect.GetData("SELECT * FROM NgayChieu");
        quanlyngaychieu.DataBind();
    }
    protected void quanlyngaychieu_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string _idngaychieu = quanlyngaychieu.DataKeys[e.RowIndex].Value.ToString();
        string strSQL = "DELETE FROM NgayChieu Where IdNgayChieu='" + _idngaychieu + "'";
        XLDL run = new XLDL();
        run.Execute(strSQL);
        ListNgayChieu();
    }

    protected void quanlyngaychieu_RowEditing(object sender, GridViewEditEventArgs e)
    {
        quanlyngaychieu.EditIndex = e.NewEditIndex;
        ListNgayChieu();
    }

    protected void quanlyngaychieu_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        
        quanlyngaychieu.EditIndex = -1;
        ListNgayChieu();
    }
    protected void quanlyngaychieu_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string _idngaychieu = quanlyngaychieu.DataKeys[e.RowIndex].Value.ToString();
        string _idphim = ((DropDownList)quanlyngaychieu.Rows[e.RowIndex].FindControl("ddlphim")).SelectedValue;
        string _idrap = ((DropDownList)quanlyngaychieu.Rows[e.RowIndex].FindControl("ddlrap")).SelectedValue;
        string _ngaychieu = ((TextBox)quanlyngaychieu.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string _thoigian = ((TextBox)quanlyngaychieu.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        float _gia = float.Parse((quanlyngaychieu.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text);
        XLDL run = new XLDL();
        string sql = "update NgayChieu set IdPhim='" +_idphim +"', "
            + "IdRap='" + _idrap + "', "
            + "NgayChieu='" + _ngaychieu + "', "
            + "ThoiGian='" + _thoigian + "',"
            + "Gia=" + _gia +" where IdNgayChieu='"+_idngaychieu+"'";
        run.Execute(sql);
        quanlyngaychieu.EditIndex = -1;
        ListNgayChieu();
    }

    protected void quanlyngaychieu_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && quanlyngaychieu.EditIndex == -1)
        {
            ((LinkButton)e.Row.Cells[6].Controls[2]).OnClientClick = "return confirm('Bạn có chắc chắn muốn xóa không ?');";
        }
    }

    protected void quanlyngaychieu_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        quanlyngaychieu.PageIndex = e.NewPageIndex;
        ListNgayChieu();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("themngaychieu.aspx");

    }
}