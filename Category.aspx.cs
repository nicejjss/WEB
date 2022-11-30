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
       public int dem=0;
        protected void Page_Load(object sender, EventArgs e)
        {

            string theloai = Request.QueryString["name"];
            catetitle.InnerHtml = "Danh Mục: " + theloai;

            List<Post> posts = (List<Post>)Application["Posts"];
            //postscate = (List<Post>)Application["Posts"];
            for (int i = 0; i < posts.Count; i++)
            {
                if (posts[i].Theloai == theloai)
                {
                    postscate.Add(posts[i]);
                    dem++;
                    //posts.Add(postscate[i]);
                }
            }
        }
    }
}