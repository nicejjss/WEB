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

                int id = int.Parse(Request.QueryString["update"]);

                List<Post> posts = (List<Post>)Application["Posts"];

                Post post = new Post();
                for(int i = 0;i < posts.Count; i++){
                    if(id == posts[id].Id)
                    {
                        post = posts[i];
                        break;
                    }
                }

                for (int i = 0; i < categories.Count; i++)
                {
                    ListItem item = new ListItem(categories[i].Ten, categories[i].Ten);
                    if(item.Value == post.Theloai)
                    {
                        item.Selected = true;
                    }
                    category.Items.Add(item);
                }

                title.Value = post.Tieude;

                news_content.Value = post.Noidung;

                imgdisplay.Src = @"~assets\img\posts\" + post.Anh;





            }
            else
            {
                Response.Redirect("index.aspx");
            }
              
        }
    }
}