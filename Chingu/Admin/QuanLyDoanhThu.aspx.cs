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
            ListDoanhThu();
        }
    }
    public void ListDoanhThu()
    {
        XLDL runSect = new XLDL();
        quanlydoanhthu.DataSource = runSect.GetData("SELECT * FROM DatVe");
        quanlydoanhthu.DataBind();
    }

    protected void quanlydoanhthu_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        quanlydoanhthu.PageIndex = e.NewPageIndex;
        ListDoanhThu();
    }
   
}