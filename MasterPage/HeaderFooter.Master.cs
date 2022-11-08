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
       public string mail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                mail = Request.QueryString["email"];
            }
        }
         void btn1_Click(object sender, EventArgs e)
        {

        }
    }
}