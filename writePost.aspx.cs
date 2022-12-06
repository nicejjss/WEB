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
            if (IsPostBack)
            {
                string tieude = Request.Form["news_title"];
                string theloai = Request.Form["news_category"];
                string tacgia = Session["name"].ToString();
                DateTime ngay = DateTime.Now;
                string noidung = Request.Form["news_content"];
                bool ispublic = false;
                int luotxem = 0;
                string anh="";
                HttpPostedFile file = Request.Files["postimg"];
                if (file.ContentLength > 0)
                {
                    string fpath = Server.MapPath(@"~\assets\img\posts\");
                    if (!File.Exists(@"~\assets\img\posts\" + file.FileName))
                    {
                        file.SaveAs(fpath + file.FileName);
                        anh = file.FileName;
                    }
                }
                Post post = new Post(tieude,tacgia,ngay,noidung,luotxem,theloai,anh,ispublic);
                List<Post> posts = (List<Post>)Application["Posts"];
                posts.Add(post);
                Application["Posts"] = posts;
                Response.Redirect("index.aspx");
            }
        }
        protected void checkout()
        {
            HttpPostedFile file = Request.Files["postimg"];
            Response.Write("< script > alert('" + file + "');</ script > ");
        }
      

    }
}