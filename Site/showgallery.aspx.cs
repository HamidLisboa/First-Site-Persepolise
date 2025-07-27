using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showgallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["subject"].ToString()))
        {
            this.Page.Title = Request.QueryString["subject"].ToString();
            lblsub.Text= Request.QueryString["subject"].ToString();
        }
    }

    
}