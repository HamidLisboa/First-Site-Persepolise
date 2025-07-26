using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MatchesManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        lblalert.Text = "ارسال اطلاعات با موفقیت انجام شد";
        MatchTableAdapters.MatchTableAdapter mta = new MatchTableAdapters.MatchTableAdapter();
        DateTime dt = DateTime.Now;
        mta.InsertMatch(txthost.Text,  txtstadium.Text, txtguest.Text, DateTime.Parse(txtdatetime.Text));
        txtguest.Text = "";
        txthost.Text = "";
        txtres1.Text = "";
        txtres2.Text = "";
        txtstadium.Text = "";
        txtdatetime.Text = "";
        GridView1.DataBind();
    }
}