using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Persepolise : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("search.aspx?search="+txtsearch.Text);
    }
}
