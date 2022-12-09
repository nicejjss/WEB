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
        public List<Post> postswithview = new List<Post>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string tieude=Request.QueryString["name"];
            List<Post> posts = (List<Post>)Application["Posts"];

            if(string.IsNullOrEmpty(Request.QueryString["detail"])== false)
            {
                int id = int.Parse(Request.QueryString["detail"]);
                for (int i = 0; i < posts.Count; i++)
                {
                    postswithview.Add(posts[i]);
                    if (posts[i].Id == id)
                    {
                        post = posts[i];
                        //break;
                    }
                }
            }
            else
            {
                for (int i = 0; i < posts.Count; i++)
                {
                    postswithview.Add(posts[i]);
                    if (posts[i].Tieude == tieude)
                    {
                        post = posts[i];
                        post.Luotxem++;
                        //break;
                    }
                }
            }
            for (int i = 0; i < postswithview.Count; i++)
            {
                for (int j = i; j < postswithview.Count; j++)
                {
                    if (postswithview[i].Luotxem < postswithview[j].Luotxem)
                    {
                        Post x = new Post();
                        x = postswithview[j];
                        postswithview[j] = postswithview[i];
                        postswithview[i] = x;
                    }
                }
            }
        }
    }
}