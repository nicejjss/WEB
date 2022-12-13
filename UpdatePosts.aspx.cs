using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class UpdatePosts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["update"]) == false)
            {
                int id = int.Parse(Request.QueryString["update"]);

                List<Post> posts = (List<Post>)Application["Posts"];
                foreach(Post post in posts)
                {
                    if(id == post.Id)
                    {
                        post.Tieude = Request.Form.Get("ctl00$ContentPlaceHolder1$title");
                        post.Theloai = Request.Form["ctl00$ContentPlaceHolder1$category"];
                        post.Noidung = Request.Form["ctl00$ContentPlaceHolder1$news_content"];
                        HttpPostedFile file = Request.Files["ctl00$ContentPlaceHolder1$postimg"];
                        post.Anh = file.FileName;
                        if (file.ContentLength > 0)
                        {

                            string fpath = Server.MapPath(@"~\assets\img\posts\");
                            if (!File.Exists(@"~\assets\img\posts\" + file.FileName))
                            {
                                file.SaveAs(fpath + file.FileName);
                            }
                        }
                    }
                }
                Response.Redirect("ManagementPosts.aspx");
            }
        }
    }
}