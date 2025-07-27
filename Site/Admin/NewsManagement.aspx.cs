using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_NewsManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSend_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (!checkimage(FileUpload1.FileName))
            {
                lblalert.Text = "فرمت عکس قابل قبول نیست";
            }
            else
            {
                lblalert.Text = "ارسال خبر با موفقیت انجام شد";
                NewsTableAdapters.NewsTableAdapter nta = new NewsTableAdapters.NewsTableAdapter();
                DateTime dt = DateTime.Now;
                string imgname = FileUpload1.FileName;
                nta.InsertNews(txttitle.Text, txtdesc.Text, 0, dt, imgname);
                FileUpload1.SaveAs(MapPath("~/Admin/img/" + FileUpload1.FileName));
                GridView1.DataBind();
                txtdesc.Text = "";
                txttitle.Text = "";

            }
        }
    }

    public Boolean checkimage(string a)
    {
        string ext = Path.GetExtension(a);
        switch (ext.ToLower())
        {
            case ".gif": return true;
            case ".jpg": return true;
            case ".jpeg": return true;
            case ".png": return true;
            case ".bmp": return true;
            default: return false;
        }
    }
}