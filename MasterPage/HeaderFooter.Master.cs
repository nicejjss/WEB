using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.MasterPage
{
    public partial class HeaderFooter : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["name"] != null)
                {
                    string ten = Session["name"].ToString();
                    user.InnerHtml = "<section class='user-function user-link user-logined' runat='server' id='name'><a class='u-link' href='../User.aspx'>" +
                                             "Welcome: " + ten + "</a></section>" +
                                      "<section class='user-function user-link user-logined' runat='server' id='name'><a class='u-link' href='Dangxuat.aspx" +
                                      "'>Đăng Xuất</a></section>"; ;
                }
            }
        }
    }
}