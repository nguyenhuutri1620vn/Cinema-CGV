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
            ListTinTuc();
        }
    }
    private void ListTinTuc()
    {
        XLDL runSect = new XLDL();
        quanlytintuc.DataSource = runSect.GetData("SELECT * FROM TinTucPhim");
        quanlytintuc.DataBind();
    }

    protected void quanlytintuc_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string _idtintuc = quanlytintuc.DataKeys[e.RowIndex].Value.ToString();
        string strSQL = "DELETE FROM TinTucPhim Where IdTinTuc='" + _idtintuc + "'";
        XLDL run = new XLDL();
        run.Execute(strSQL);
        ListTinTuc();
    }

    protected void quanlytintuc_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string _idtintuc = quanlytintuc.DataKeys[e.RowIndex].Value.ToString();
        string _tentintuc = ((TextBox)quanlytintuc.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        FileUpload anh = (quanlytintuc.Rows[e.RowIndex].FindControl("FUanh") as FileUpload);
        string url = (anh.FileName);
        string _mota = ((TextBox)quanlytintuc.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        XLDL run = new XLDL();
        string sql = "update TinTucPhim set TenTinTuc=N'" + _tentintuc + "',"
            + "HinhAnh='" + url + "',"
            + "NoiDung=N'" + _mota + "' where IdTinTuc='" + _idtintuc + "'";
        run.Execute(sql);
        quanlytintuc.EditIndex = -1;
        ListTinTuc();

    }

    protected void quanlytintuc_RowEditing(object sender, GridViewEditEventArgs e)
    {
        quanlytintuc.EditIndex = e.NewEditIndex;
        ListTinTuc();
    }

    protected void quanlytintuc_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && quanlytintuc.EditIndex == -1)
        {
            ((LinkButton)e.Row.Cells[4].Controls[2]).OnClientClick = "return confirm('Bạn có chắc chắn muốn xóa không ?');";
        }
    }

    protected void quanlytintuc_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        quanlytintuc.EditIndex = -1;
        ListTinTuc();
    }
    protected void quanlytintuc_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        quanlytintuc.PageIndex = e.NewPageIndex;
        ListTinTuc();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("themtinttuc.aspx");

    }
}