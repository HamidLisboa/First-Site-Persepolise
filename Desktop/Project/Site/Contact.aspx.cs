using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    { 
        lblalert.Text = "پیام شما با موفقیت ارسال شد!!";
        ContactTableAdapters.ContactTableAdapter cta = new ContactTableAdapters.ContactTableAdapter();
        cta.InsertContact(txtuname.Text, txtemail.Text, txttitle.Text, txttext.Text, DateTime.Now);
        txttext.Text = "";
        txtemail.Text = "";
        txttitle.Text = "";
        txtuname.Text = "";
        }
    }
