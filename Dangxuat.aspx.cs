using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class Dangxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login_time"] != null)
            {
                DateTime loginTime = (DateTime)Session["login_time"];
                var loginTimeDurationInMinutes = (DateTime.Now - loginTime).Seconds;
                timer.InnerHtml = "Thời gian đăng nhập là " + loginTimeDurationInMinutes.ToString() + "s";
            }
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }
}