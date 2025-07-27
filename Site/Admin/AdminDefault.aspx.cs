using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["a"] != "1")
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
    protected void Page_Unload(object sender, EventArgs e)
    {
        Session["a"] = 0;
    }
}