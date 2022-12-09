using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class ManagementPosts : System.Web.UI.Page
    {
        public List<Post> postsname = new List<Post>();
        List<Post> posts = new List<Post>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string name =Session["name"] as string ;
            if (name != null) {
                posts = (List<Post>)Application["Posts"];
                bool isAdmin = false;
                isAdmin = (bool)Session["admin"];
                if (isAdmin == true)
                {
                    postsname = posts;
                }
                else
                {
                    foreach(Post post in posts)
                    {
                        if(post.Tacgia == name)
                        {
                            postsname.Add(post);
                        }
                    }
                }
                if (string.IsNullOrEmpty(Request.QueryString["delete"]) == false)
                {
                    int id = int.Parse(Request.QueryString["delete"]);
                  for(int i = 0; i < posts.Count; i++)
                    {
                        if (posts[i].Id == id)
                        {
                            posts.Remove(posts[i]);
                        }
                    }
                    Application["Posts"] = posts;
                    Response.Redirect("Managementposts.aspx");
                }
                if (string.IsNullOrEmpty(Request.QueryString["disallow"]) == false)
                {
                    Changestatus("disallow");
                    //int id = int.Parse(Request.QueryString["disallow"]);
                    //for (int i = 0; i < posts.Count; i++)
                    //{
                    //    if (posts[i].Id == id)
                    //    {
                    //        posts[i].Ispublic = false;
                    //    }
                    //}
                }
                if (string.IsNullOrEmpty(Request.QueryString["allow"]) == false)
                {
                    Changestatus("allow");
                    //int id = int.Parse(Request.QueryString["allow"]);
                    //for (int i = 0; i < posts.Count; i++)
                    //{
                    //    if (posts[i].Id == id)
                    //    {
                    //        posts[i].Ispublic = true;
                    //    }
                    //}
                    //Application["Posts"] = posts;
                    //Response.Redirect("Managementposts.aspx");
                }

            }
            else
            {
                Response.Redirect("index.aspx");
            }

        }
        public void Changestatus(string status)
        {
            bool ispublic = false;
            if (status == "allow")
            {
                ispublic = true;
            }
            else
            {
                ispublic = false;
            }
            int id= int.Parse(Request.QueryString[status]);
            for (int i = 0; i < posts.Count; i++)
            {
                if ( posts[i].Id == id && posts[i].Ispublic != ispublic)
                {
                    posts[i].Ispublic = ispublic;
                }
            }
            Application["Posts"] = posts;
            Response.Redirect("Managementposts.aspx");
        }
        //protected void BindGrid()
        //{
        //    GridView1.DataSource = (DataTable)ViewState["Customers"];
        //    GridView1.DataBind();
        //}
    }
}