using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class writePost : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string ten = Session["name"] as string;
            if (ten != null)
            {
                List<Category> categories = (List<Category>)Application["Categories"];

                for (int i = 0; i < categories.Count; i++)
                {
                    ListItem item = new ListItem(categories[i].Ten, categories[i].Ten);
                    category.Items.Add(item);
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
              
        }
    }
}