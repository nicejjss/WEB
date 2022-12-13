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


      public  Post post = new Post();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ten = Session["name"] as string;
            if (ten != null)
            {
                List<Category> categories = (List<Category>)Application["Categories"];

                List<Post> posts = (List<Post>)Application["Posts"];

           
                if (string.IsNullOrEmpty(Request.QueryString["update"]) == false)
                {
                  
                    int id = int.Parse(Request.QueryString["update"]);
                    form1.Action = "UpdatePosts.aspx?update="+id;
                    for (int i = 0; i < posts.Count; i++)
                    {
                        if (posts[i].Id == id)
                        {
                            post = posts[i];
                            //break;
                        }
                    }

                    imgdisplay.Src = "~/assets/img/posts/" + post.Anh;
                    title.Value = post.Tieude;
                    news_content.InnerText = post.Noidung;
                    submit.Value = "Update";
                }
                for (int i = 0; i < categories.Count; i++)
                {
                    ListItem item = new ListItem(categories[i].Ten, categories[i].Ten);
                    if (item.Value == post.Theloai)
                    {
                        item.Selected = true;
                    }
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