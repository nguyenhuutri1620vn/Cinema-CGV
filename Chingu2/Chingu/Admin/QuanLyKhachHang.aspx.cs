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
        if (!IsPostBack)
        {
            ListKhachHang();
        }
    }
    public void ListKhachHang()
    {
        XLDL runSect = new XLDL();
        qlkh.DataSource = runSect.GetData("SELECT * FROM KhachHang");
        qlkh.DataBind();
    }
    public string Display(object obj)
    {
        bool tw = bool.Parse(obj.ToString());
        if (tw) return "Nam";
        else return "Nữ";
    }




    protected void qlkh_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        qlkh.PageIndex = e.NewPageIndex;
        ListKhachHang();
    }
}
