using System;
using System.Collections.Generic;

namespace WEB
{
    public partial class index : System.Web.UI.Page
    {
       public Post viewpost = new Post();
        public List<Post> allposts = new List<Post>();
        public List<Post> postswithview = new List<Post>();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Post xem nhieu nhat
            List<Post> posts = (List<Post>)Application["Posts"];
            postswithview = (List<Post>)Application["Posts"];
            viewpost = posts[0];
            for(int i = 1; i < posts.Count; i++)
            {
                if(posts[i].Luotxem > viewpost.Luotxem)
                {
                    viewpost = posts[i];
                }
            }

            //Post theo TG
            for(int i = 0; i < posts.Count; i++)
            {
                if(posts[i].Tieude != viewpost.Tieude)
                {
                    allposts.Add(posts[i]);
                }
            }
            for (int i = 0; i < allposts.Count; i++)
            {
                for (int j = i; j < allposts.Count; j++)
                {
                    if (allposts[i].Ngay < allposts[j].Ngay)
                    {
                        Post x = new Post();
                        x = allposts[j];
                        allposts[j] = allposts[i];
                        allposts[i] = x;
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