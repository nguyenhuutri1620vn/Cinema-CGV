using ASP;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnMua_Click(object sender, EventArgs e)
    {
        if (Session["TaiKhoan"] != null)
        {
            Response.Redirect("~/chitietphim.aspx");
        }
        else
        {
            Response.Redirect("~/dangnhap.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["TaiKhoan"] != null)
        {

            String a = ((Label)e.Item.FindControl("Idphim")).Text;
            Session["tenPhim"] = a;

            Response.Redirect("chitietphim.aspx?IdPhim=" + a);
        }
        else
        {
            Response.Redirect("~/dangnhap.aspx");
        }

    }
    public string DisplayLP(object s)
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
}