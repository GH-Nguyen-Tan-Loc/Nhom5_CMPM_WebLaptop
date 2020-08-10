
using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MOONLY.BusinessLogic;
using MOONLY.Operational;
using MOONLY.Common;

public partial class UC_Home_Thanhtoan : System.Web.UI.UserControl
{
    private DonHang _donhang = new DonHang();
    private decimal _tongtien = 0; // để tính tổng cột thành tiền
    protected void Page_Load(object sender, EventArgs e)
    {

        HienThiGioHang();
    }
    private void HienThiGioHang()
    {
        MOONLY.Common.GioHang giohang = new MOONLY.Common.GioHang();
        giohang.Cartguid = TaoCartGUID.LayCartGUID();
        XuLyLayGioHang xulylaygiohang = new XuLyLayGioHang();
        xulylaygiohang.Giohang = giohang;
        try
        {
            xulylaygiohang.Thucthi();
            GridView1.DataSource = xulylaygiohang.Ketqua;
            GridView1.DataBind();
        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
    }
    protected void btn_dathang_Click(object sender, ImageClickEventArgs e)
    {
        System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=JavaScript>alert(Thanh toán thành công! Chúng tôi sẽ duyện đơn hàng của bạn.)</SCRIPT>");
         
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            _tongtien += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "ThanhTien"));
        }
        txt_tongtien.Text = _tongtien.ToString() + " VND";
    }
}