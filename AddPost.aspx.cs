using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class AddPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ten = Session["name"] as string;
            if (ten != null)
            {
                string tieude = Request.Form.Get("ctl00$ContentPlaceHolder1$title");
                string theloai = Request.Form["ctl00$ContentPlaceHolder1$category"];
                string tacgia = Session["name"].ToString();
                DateTime ngay = DateTime.Now;
                string noidung = Request.Form["ctl00$ContentPlaceHolder1$news_content"];
                bool ispublic = false;
                int luotxem = 0;
                HttpPostedFile file = Request.Files["ctl00$ContentPlaceHolder1$postimg"];
                string anh = file.FileName;
                if (file.ContentLength > 0)
                {
                  
                    string fpath = Server.MapPath(@"~\assets\img\posts\");
                    if (!File.Exists(@"~\assets\img\posts\"+file.FileName))
                    {
                        file.SaveAs(fpath + file.FileName);
                    }
                }

                List<Post> posts = (List<Post>)Application["Posts"];
                int dem;
                if (posts.Count == 0)
                {
                    dem = 1;
                }
                else
                {
                    dem = 1+posts.Count;
                }
                Post post = new Post(dem,tieude, tacgia, ngay, noidung, luotxem, theloai, anh, ispublic);

                posts.Add(post);

                Application["Posts"] = posts;

                Response.Redirect("ManagementPosts.aspx");
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}