using System;
using System.Collections.Generic;

namespace WEB
{
    public partial class index : System.Web.UI.Page
    {
       public Post viewpost = new Post();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Post> posts = (List<Post>)Application["Posts"];
            viewpost = posts[0];
            for(int i = 1; i < posts.Count; i++)
            {
                if(posts[i].Luotxem > viewpost.Luotxem)
                {
                    viewpost = posts[i];
                }
            }
        }
    }
}