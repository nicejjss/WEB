using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class Search : System.Web.UI.Page
    {
       public List<Post> postssearch = new List<Post>();
       public int dem=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string timkiem = Request.QueryString["searchinput"].Trim();

            searchtitle.InnerText = "Tìm kiếm: " + timkiem;

            List <Post> posts = (List<Post>)Application["Posts"];
            for(int i =0;i < posts.Count; i++)
            {
                if (posts[i].Tieude.ToLower().Contains(timkiem.ToLower())==true)
                {
                    dem++;
                    postssearch.Add(posts[i]);
                }
            }
        }
    }
}