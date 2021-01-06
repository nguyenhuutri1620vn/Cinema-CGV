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

    }

    protected void BtnThem_Click(object sender, EventArgs e)
    {
        string str1 = @"Select 1 from NhanVien Where IdNhanVien=N'" + txtidnv.Text + "'";
        XLDL run = new XLDL();
        if (run.GetData(str1).Rows.Count > 0)
        {
            lbThongBaoLoi.Text = "Id nhân viên đã tồn tại.";
            txtidnv.Focus();
        }
        else
        {
            string _idnv = txtidnv.Text;
            string _tennv = txttennv.Text;
            string _tuoi = txttuoi.Text;
            string _gt = ddlgioitinh.SelectedValue;
            string _vt = txtvitri.Text;
            string _tw = ddltimework.SelectedValue;
            float _lg = float.Parse(txtluong.Text);
            string strSQL = "insert into NhanVien values ('" + _idnv + "', N'" + _tennv + "', " + _tuoi + ", " + _gt + ",'" + _vt + "'," + _tw + "," + _lg + ")";
            run.Execute(strSQL);
            lbThongBaoLoi.Text = "Thêm nhân viên thành công ^^";
        }

    }

    protected void btnlietke_Click(object sender, EventArgs e)
    {
        Response.Redirect("quanlynhanvien.aspx");
    }
}