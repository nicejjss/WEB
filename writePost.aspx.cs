using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class writePost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Category> categories = (List<Category>)Application["Categories"];
           
                for (int i = 0; i < categories.Count; i++)
                {
                    ListItem item = new ListItem(categories[i].Ten, categories[i].Ten);
                    category.Items.Add(item);
                }
              
        }
        protected bool Checkpost(object sender, EventArgs e)
        {
            string tieude = Request.Form["news_title"];
            string theloai = Request.Form["news_category"];
            string tacgia = Session["name"].ToString();
            DateTime ngay = DateTime.Now;
            string noidung = Request.Form["news_content"];
            bool ispublic = false;
            int luotxem = 0;
            HttpPostedFile file = Request.Files["postimg"];
            string anh = file.FileName;
            if (tieude.Trim() == "" || noidung.Trim() == "" || anh.Trim() == "")
            {
                Response.Write("<script>alert('Khong duoc de trong du lieu');</script>");
                return false;
            }
            else
            {
                if (file.ContentLength > 0)
                {
                    string fpath = Server.MapPath(@"~\assets\img\posts\");
                    if (!File.Exists(@"~\assets\img\posts\" + file.FileName))
                    {
                        file.SaveAs(fpath + file.FileName);
                        anh = file.FileName;
                    }
                }
                Post post = new Post(tieude, tacgia, ngay, noidung, luotxem, theloai, anh, ispublic);
                List<Post> posts = (List<Post>)Application["Posts"];
                posts.Add(post);
                Application["Posts"] = posts;
                Response.Redirect("index.aspx");
                return true;
            }
        }
    }
}