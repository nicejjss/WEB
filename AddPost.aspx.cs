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
            List<Post> posts = (List<Post>)Application["Posts"];
            //int ID = int.Parse(Request.Form["saveId"]);
            string ID = Request.Form.Get("saveId").ToString();
            string ten = Session["name"] as string;
            string tieude = Request.Form.Get("news_title").ToString();
            string theloai = Request.Form["ctl00$ContentPlaceHolder1$category"];
            string tacgia = Session["name"].ToString();
            DateTime ngay = DateTime.Now;
            string noidung = Request.Form["news_content"];
            bool ispublic = false;
            int luotxem = 0;
            HttpPostedFile file = Request.Files["ctl00$ContentPlaceHolder1$postimg"];
            string anh = file.FileName;
            if (file.ContentLength > 0)
            {
               
                string fpath = Server.MapPath(@"~\assets\img\posts\");
                if (!File.Exists(@"C:\Users\Admin\source\repos\web\assets\img\posts\" + file.FileName))
                {
                    file.SaveAs(fpath + file.FileName);
                }
            }
            if (ID != null)
            {
                int saveID = int.Parse(ID);
                for (int i = 0; i < posts.Count; i++)
                {
                    if (posts[i].Id == saveID)
                    {

                        posts[i].Tieude = tieude;
                        posts[i].Theloai = theloai;
                        posts[i].Tacgia = tacgia;
                        posts[i].Noidung = noidung;
                        posts[i].Anh = anh;                                                     
                    }
                }
                Response.Redirect("ManagementPosts.aspx");

            }
            else  if (ten != null)
            {
             
                
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