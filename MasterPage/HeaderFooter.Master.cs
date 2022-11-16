using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.MasterPage
{
    public partial class HeaderFooter : System.Web.UI.MasterPage
    {
       public string mail;
        protected void Page_Load(object sender, EventArgs e)
        {
            string html = "";
            if((bool)Session["login"] == true)
            {
                html += "Xin Chào " + Session["tentk"];
                user_member.InnerHtml = html;
            }
            else
            {
                html += "USER";
                user_member.InnerHtml = html;
            }

            if (Request.QueryString["btnLogout"] == "true")
            {
                Session["login"] = false;
                Session.Abandon();

                Response.Redirect("Dangnhap.aspx");
            }



        }
         void btn1_Click(object sender, EventArgs e)
        {

        }

        protected void logout_Click(object sender, EventArgs e)
        {

        }
    }
}