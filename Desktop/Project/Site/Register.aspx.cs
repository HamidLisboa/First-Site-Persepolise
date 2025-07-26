using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        
            lblalert.Text = "ثبت نام شما با موفقیت انجام شد کارت شما پس از تایید مدیریت و چاپ به آدرس شما ارسال می شود!!!";
        CardTableAdapters.CardRegisterTableAdapter cta = new CardTableAdapters.CardRegisterTableAdapter();
        cta.InsertCard(txtname.Text, txtfam.Text, txtnum.Text, txtpass.Text, txtemail.Text, txtadd.Text);
            txtadd.Text = "";
            txtconfpass.Text = "";
            txtemail.Text = "";
            txtfam.Text = "";
            txtname.Text = "";
            txtpass.Text = "";
            txtnum.Text = "";
        
    }
}