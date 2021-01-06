using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connect;

public partial class Admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListRap();
        }
    }
    private void ListRap()
    {
        XLDL runSect = new XLDL();
        quanlyrap.DataSource = runSect.GetData("SELECT * FROM RapChieuPhim");
        quanlyrap.DataBind();
    }
    protected void quanlyrap_edit(object sender, GridViewEditEventArgs e)
    {
        quanlyrap.EditIndex = e.NewEditIndex;
        ListRap();
    }

    protected void quanlyrap_cancel(object sender, GridViewCancelEditEventArgs e)
    {
        quanlyrap.EditIndex = -1;
        ListRap();
    }

    protected void quanlyrap_deleting(object sender, GridViewDeleteEventArgs e)
    {
        string _idRap = quanlyrap.DataKeys[e.RowIndex].Value.ToString();
        string strSQL = "DELETE FROM RapChieuPhim Where IdRap='" + _idRap + "'";
        XLDL run = new XLDL();
        run.Execute(strSQL);
        ListRap();
    }
    protected void quanlyrap_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string _idrap = quanlyrap.DataKeys[e.RowIndex].Value.ToString();
        string _tenrap = ((TextBox)quanlyrap.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string _diachi = ((TextBox)quanlyrap.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        int _sochongoi = int.Parse((quanlyrap.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text);
        string _sdt = ((TextBox)quanlyrap.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        FileUpload anh = (quanlyrap.Rows[e.RowIndex].FindControl("FUanh") as FileUpload);
        string url = (anh.FileName);
        XLDL run = new XLDL();
        string lennhSql = "update RapChieuPhim set TenRap=N'" + _tenrap + "', "
            + "Diachi=N'" + _diachi + "',"
            + "SoChoNgoi=" + _sochongoi + ","
            + "Sdt='" + _sdt + "',"
            + "HinhAnh='" + url + "'"
            + "where IdRap='" + _idrap + "'";
        run.Execute(lennhSql);
        quanlyrap.EditIndex = -1;
        ListRap();
    }

    protected void quanlyrap_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && quanlyrap.EditIndex == -1)
        {
            ((LinkButton)e.Row.Cells[6].Controls[2]).OnClientClick = "return confirm('Bạn có chắc chắn muốn xóa không ?');";
        }
    }

    protected void quanlyrap_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        quanlyrap.PageIndex = e.NewPageIndex;
        ListRap();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("themrap.aspx");

    }
}