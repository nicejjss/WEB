using System;
using System.Collections.Generic;

namespace WEB
{
    public partial class index : System.Web.UI.Page
    {
        public Post viewpost = new Post();
        public List<Post> allposts = new List<Post>();
        public List<Post> postswithview = new List<Post>();
        public int dem = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Post xem nhieu nhat
                List<Post> posts = (List<Post>)Application["Posts"];
                viewpost = posts[0];
                for (int i = 0; i < posts.Count; i++)
                {

                    if (posts[i].Ispublic == true)
                    {
                        postswithview.Add(posts[i]);
                    }

                    if (posts[i].Luotxem > viewpost.Luotxem)
                    {
                        viewpost = posts[i];
                    }
                }

                //Post theo TG
                for (int i = 0; i < posts.Count; i++)
                {
                    if (posts[i].Tieude != viewpost.Tieude && posts[i].Ispublic==true)
                    {
                        allposts.Add(posts[i]);
                        dem++;
                    }
                }
                for (int i = 0; i < allposts.Count-1; i++)
                {
                
                    for (int j = i+1; j < allposts.Count; j++)
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
                for (int i = 0; i < postswithview.Count - 1; i++)
                {
                    for (int j = i+1; j < postswithview.Count; j++)
                    {
                        if (postswithview[i].Luotxem < postswithview[j].Luotxem)
                        {
                          Post  x = postswithview[j];
                            postswithview[j] = postswithview[i];
                            postswithview[i] = x;
                        }
                    }
                }
            }

        }
    }
}