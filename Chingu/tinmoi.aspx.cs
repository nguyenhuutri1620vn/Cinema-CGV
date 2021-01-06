using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        String a = ((Label)e.Item.FindControl("IdTinTuc")).Text;
        Session["IdTinTuc"] = a;
        Response.Redirect("chitiettintuc.aspx?IdTinTuc=" + a);
    }
}