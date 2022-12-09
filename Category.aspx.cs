using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class Category1 : System.Web.UI.Page
    {
        public List<Post> postscate=new List<Post>();
        public List<Post> postswithview = new List<Post>();
        public int dem=0;
        protected void Page_Load(object sender, EventArgs e)
        {

            string theloai = Request.QueryString["name"];
            catetitle.InnerHtml = "Danh Mục: " + theloai;

            List<Post>  posts = (List<Post>)Application["Posts"];
            //postscate = (List<Post>)Application["Posts"];
            for (int i = 0; i < posts.Count; i++)
            {
                postswithview.Add(posts[i]);
                if (posts[i].Theloai == theloai && posts[i].Ispublic == true)
                {
                    postscate.Add(posts[i]);
                    dem++;
                    //posts.Add(postscate[i]);
                }
            }

            for (int i = 0; i < postswithview.Count-1; i++)
            {
                for (int j = i+1; j < postswithview.Count; j++)
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