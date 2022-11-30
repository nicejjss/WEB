using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class writePost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void news_submit_Click(object sender, EventArgs e)
        {
            int id=0;
            string title = Request.Form["news_title"];
            string author = Request.Form["news_author"];
            string category = Request.Form["news_category"];
            string content = Request.Form["news_content"];
            string img = news_file.FileName;
            List<Category> Categories = (List<Category>)Application["Categories"];
            List<Post> posts = (List<Post>)Application["Posts"];
            foreach(Post p in posts)
            {
                id=id++;
            }
            Post post = new Post(id,title,author,DateTime.Now, content, 0 , category, img);
            
            Category cate = new Category(category);
            posts.Add(post);
            Categories.Add(cate);
            //Application["Posts"] = posts;
            //Application["Categories"] = Categories;

            if (news_file.HasFile)
            {
                news_file.SaveAs("C:\\Users\\Admin\\source\\repos\\WEB1\\assets\\img\\posts\\" +  news_file.FileName);
            }
        }
    }
}