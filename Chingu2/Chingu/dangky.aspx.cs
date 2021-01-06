using connect;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    public static bool GioiTinh = true;
    protected void aDangNhap_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/dangnhap.aspx");
    }

    protected void Btndangky_Click(object sender, EventArgs e)
    {
        try
        {
            
            string str1 = @"Select 1 from KhachHang Where TaiKhoan=N'" + txttaikhoan.Text + "'";
            XLDL run = new XLDL();
            if (run.GetData(str1).Rows.Count > 0)
            {
                lbThongBaoLoi.Text = "Tài khoản đã tồn tại.";
                txttaikhoan.Focus();
            } 
            else
            {
                string _tk = txttaikhoan.Text;
                string _ten = txtten.Text;
                string _mk = txtmatkhau.Text;
                string n = ngay.Text;
                string t = thang.Text;
                string na = nam.Text;
                string ngaysinh = t + "/" + n + "/" + na;
                string gt = rdbgioitinh.SelectedValue;
                string kv = txtkhuvuc.Text;
                string sql = "insert into KhachHang values('" + _tk + "',N'" + _ten + "','" + _mk + "','" + ngaysinh + "'," + gt + ",'" + kv + "')";
                run.Execute(sql);
                lbThongBaoLoi.Text = "Đăng ký thành công";
            }
        }
        catch
        {
            lbThongBaoLoi.Text = "Vui lòng nhập đẩy đủ thông tin";
        }
    }

    protected void txtmatkhau_TextChanged(object sender, EventArgs e)
    {

    }



   
}