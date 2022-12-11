using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WEB
{
    public partial class writePost : System.Web.UI.Page
    {
        public Post post = new Post();
        public List<Post> updatePost = new List<Post>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ten = Session["name"] as string;
            if (ten != null)
            {
                List<Category> categories = (List<Category>)Application["Categories"];

                for (int i = 0; i < categories.Count; i++)
                {
                    ListItem item = new ListItem(categories[i].Ten, categories[i].Ten);
                    category.Items.Add(item);
                }
               
            }
            else
            {
                Response.Redirect("index.aspx");
            }

            List<Post> posts = (List<Post>)Application["Posts"];

            if (string.IsNullOrEmpty(Request.QueryString["update"]) == false)
            {
                int id = int.Parse(Request.QueryString["update"]);
                for (int i = 0; i < posts.Count; i++)
                {
                    updatePost.Add(posts[i]);
                    if (posts[i].Id == id)
                    {
                        post = posts[i];
                        //break;
                    }
                }
               
               
            }
           
        }

        //protected void update_ServerClick(object sender, EventArgs e)
        //{

        //    string tieude = Request.Form.Get("news_title").ToString();
        //    string theloai = Request.Form["ctl00$ContentPlaceHolder1$category"];
        //    string tacgia = Session["name"].ToString();
        //    DateTime ngay = DateTime.Now;
        //    string noidung = Request.Form["news_content"];
        //    HttpPostedFile file = Request.Files["ctl00$ContentPlaceHolder1$postimg"];
        //    string anh = file.FileName;
        //    if (file.ContentLength > 0)
        //    {
        //        string fpath = Server.MapPath(@"~\assets\img\posts\");
        //        if (File.Exists(@"~\assets\img\posts\" + file.FileName) == true)
        //        {
        //            Response.Redirect("index.aspx");
        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('Trung ten file anh da ton tai,Doi ten!!!')</script>");
        //        }
        //    }
        //    List<Post> posts = (List<Post>)Application["Posts"];

        //    if (string.IsNullOrEmpty(Request.QueryString["ID"]) == false)
        //    {
        //        int id = int.Parse(Request.QueryString["ID"]);
        //        for (int i = 0; i < posts.Count; i++)
        //        {
        //            updatePost.Add(posts[i]);
        //            if (posts[i].Id == id)
        //            {
        //                foreach (Post obj in posts)
        //                {
        //                    if (obj.Id == id)
        //                    {
        //                        posts[i].Tieude = tieude;
        //                        posts[i].Theloai = theloai;
        //                        posts[i].Tacgia = tacgia;
        //                        posts[i].Noidung = noidung;
        //                        posts[i].Anh = anh;
        //                        break;
        //                    }
        //                }
                        
        //            }
        //        }


        //    }

        //}

    }
}