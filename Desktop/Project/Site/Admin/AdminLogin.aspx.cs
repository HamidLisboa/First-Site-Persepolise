using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEnter_Click(object sender, EventArgs e)
    {
        string uname = Request.Form["uname"];
        string pass = Request.Form["pass"];

        var db = new DataClassesDataContext();

        var c = from a in db.Admins
                where (a.AdminName == uname && a.Pass == pass)
                select a;

        if (c.Count() != 0)
        {
            Session.Add("a", "1");
            Response.Redirect("AdminDefault.aspx");
            Label1.Text = "";
        }
        else
        {
            Label1.Text = "نام کاربری یا رمز عبور شما اشتباه است";
        }
    }
}