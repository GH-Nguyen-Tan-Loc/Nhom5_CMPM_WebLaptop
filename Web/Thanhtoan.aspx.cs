using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thanhtoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Control hienthi = new Control();
            hienthi = LoadControl("Thanhtoan.ascx");
            this.Panel1.Controls.Add(hienthi);
        }
    }
}