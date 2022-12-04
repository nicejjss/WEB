using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB.MasterPage
{
    public partial class HeaderFooter : System.Web.UI.MasterPage
    {
       public List<Category> cate = new List<Category>();
        public List<Post> posts = new List<Post>();
        protected void Page_Load(object sender, EventArgs e)
        {
            //User
            if (!IsPostBack)
            {


                if (Session["name"] != null)
                {
                    string ten = Session["name"].ToString();
                    user.InnerHtml = "<section class='user-function user-link user-logined' runat='server' id='name'><section class='u-link' id='u-link' >" +
                                             "Welcome: " + ten + "</section>" +
                                              "<ul class='u-menu'>" +
                                                    "<li class='u-item'><a href=\"writePost.aspx\">Thêm Tin</a></li>\r\n" +
                                                    "<li class='u-item'><a href=\"waitingForNews.aspx\">Quản Lý Tin</a></li>" +
                                                    "<li class='u-item'><a href=\"Dangxuat.aspx\">Đăng Xuất</a></li>" +
                                                    "</ul>" +
                                             "</section>";
                                      //"<section class='user-function user-link user-logined' runat='server' id='name'><a class='u-link' id='logout-link' href='Dangxuat.aspx" +
                                      //"'>Đăng Xuất</a></section>";
                    dangky.InnerHtml = "<a href='./User.aspx'><section class='item-category-text'>Welcome: "+ten+"</section></a>";  
                    dangnhap.InnerHtml= "<a href='./Dangxuat.aspx'><section class='item-category-text'>Đăng Xuất</section></a>";
                }
            }

            //Categories
                cate = (List<Category>)Application["Categories"];
            listcate.InnerHtml = "";
            for(int i = 0; i < cate.Count; i++)
            {
                listcate.InnerHtml += "<li class='item-category'><a href='./Category.aspx?name="+cate[i].Ten+"'><section class='item-category-text'>"+cate[i].Ten+"</section></a></li>";
            }

            //Posts footer
            posts = (List<Post>)Application["Posts"];
            for(int i = 0; i < posts.Count; i++)
            {
                for(int j=i; j < posts.Count; j++)
                {
                    if(posts[i].Ngay < posts[j].Ngay)
                    {
                        Post x = new Post();
                        x = posts[j];
                        posts[j] = posts[i];
                        posts[i] = x;
                    }
                }
            }
        }
    }
}