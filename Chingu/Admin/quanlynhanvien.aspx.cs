using System;
using System.Collections.Generic;
using System.IdentityModel.Claims;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using connect;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListNhanVien();
        }
       
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        Response.Redirect("themNhanVien.aspx");
    }
    private void ListNhanVien()
    {
        XLDL runSect = new XLDL();
        qlnv.DataSource = runSect.GetData("SELECT * FROM NhanVien");
        qlnv.DataBind();
    }
    public string DisplayGT(object obj)
    {
        bool gt = bool.Parse(obj.ToString());
        if (gt) return "Nam";
        else return "Nữ";
    }
    public string DisplayTW(object obj)
    {
        bool tw = bool.Parse(obj.ToString());
        if (tw) return "Full-time";
        else return "Part-time";
    }
    protected void qlnv_RowEditing(object sender, GridViewEditEventArgs e)
    {
        qlnv.EditIndex = e.NewEditIndex;
        ListNhanVien();
    }

    protected void qlnv_RowsCancel(object sender, GridViewCancelEditEventArgs e)
    {
        qlnv.EditIndex = -1;
        ListNhanVien();
    }


    protected void qlnv_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string _idnv = qlnv.DataKeys[e.RowIndex].Value.ToString().Trim();
        string _tennv = ((TextBox)qlnv.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string _tuoi = ((TextBox)qlnv.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string _gt = ((DropDownList)qlnv.Rows[e.RowIndex].FindControl("ddlgioitinh")).SelectedValue;
        string _vitri = ((TextBox)qlnv.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string _tg = ((DropDownList)qlnv.Rows[e.RowIndex].FindControl("ddltimework")).SelectedValue;
        float _lg = float.Parse((qlnv.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text);
        XLDL run = new XLDL();
        string lennhSql = "update NhanVien SET TenNV=N'" + _tennv + "'," +
            "Tuoi=" + _tuoi + "," +
            "GioiTinh=" + _gt + "," +
            "ViTri=N'" + _vitri + "'," +
            "ThoiGianLamViec=" + _tg + "," +
            "Luong=" + _lg + 
            "Where IdNhanVien='"+ _idnv +"'";            
        run.Execute(lennhSql);
        qlnv.EditIndex = -1;
        ListNhanVien();
    }

    protected void qlnv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string _manv = qlnv.DataKeys[e.RowIndex].Value.ToString();
        string strSQL = "DELETE FROM NhanVien Where IdNhanVien='" + _manv + "'";
        XLDL run = new XLDL();
        run.Execute(strSQL);
        ListNhanVien();
        

    }
    protected void qlnv_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.DataRow && qlnv.EditIndex == -1)
        {
            ((LinkButton)e.Row.Cells[7].Controls[2]).OnClientClick = "return confirm('Bạn có chắc chắn muốn xóa không ?');";
        }
    }

    protected void qlnv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        qlnv.PageIndex = e.NewPageIndex;
        ListNhanVien();
    }
}