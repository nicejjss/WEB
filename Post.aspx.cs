using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class Post1 : System.Web.UI.Page
    {
        public Post post = new Post();
        protected void Page_Load(object sender, EventArgs e)
        {
            string tieude = Request.QueryString["name"];
            List<Post> posts = (List<Post>)Application["Posts"];
            for(int i = 0; i < posts.Count; i++)
            {
                if(posts[i].Tieude == tieude)
                {
                    post = posts[i];
                    post.Luotxem++;
                    break;
                }
            }
        }
    }
}