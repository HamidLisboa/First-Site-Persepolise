using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shownews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblalert.Text = "";
        NewsTableAdapters.NewsTableAdapter nta2 = new NewsTableAdapters.NewsTableAdapter();
        string nid=Request.QueryString["nid"];
        string nn = nta2.NumberofNV(int.Parse(nid)).ToString();
        nta2.NewsViewUpdate(int.Parse(nn), int.Parse(nid));
    }


    protected void BtnSend_Click(object sender, EventArgs e)
    {
        if(txtname.Text=="" || txtemail.Text=="" || txtdesc.Text=="")
        {
            lblalert.Text = "پر کردن تمامی فیلدها اجباری است!!";
        }
        else
        {
            lblalert.Text = "نظر شما پس از تایید مدیریت بر روی سایت قرار می گیرد!!";
            CommentTableAdapters.CommentTableAdapter cmt = new CommentTableAdapters.CommentTableAdapter();
            string nid = Request.QueryString["nid"];
            NewsTableAdapters.NewsTableAdapter nt = new NewsTableAdapters.NewsTableAdapter();
            cmt.InsertComment(txtname.Text.Trim(), txtemail.Text, DateTime.Now, txtdesc.Text, Int32.Parse(nid), false);
            txtdesc.Text = "";
            txtemail.Text = "";
            txtname.Text = "";
            DataList5.DataBind();
        }
    }
}