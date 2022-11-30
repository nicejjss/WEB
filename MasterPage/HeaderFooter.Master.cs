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
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


                if (Session["name"] != null)
                {
                    string ten = Session["name"].ToString();
                    if ((bool)Session["admin"] == true)
                    {
                        user.InnerHtml = "<section class='user-function user-link user-logined' runat='server' id='name'><a class='u-link' id='u-link' href='../User.aspx'>" +
                                            "<nav class=\"navbar\">" +
                                            "<ul>" +
                                                " <li><a>Xin Chào :"+ten+"</a>" +
                                                    "<ul>" +
                                                    "<li><a href=\"writePost.aspx\">POST NEWS</a></li>\r\n" +
                                                    " <li><a>UPDATE NEWS</a></li>" +
                                                    "<li><a>DELETE NEWS</a></li>" +
                                                    "<li><a href=\"waitingForNews.aspx\">MANAGEMENT NEWS</a></li>" +
                                                    "<li><a href=\"Dangxuat.aspx\">LOGOUT</a></li>" +
                                                    "</ul>" +
                                                   "</li>" +
                                             "</ul>" +
                                             "</nav> </section>";
                    }
                    else
                    {
                        user.InnerHtml = "<section class='user-function user-link user-logined' runat='server' id='name'><a class='u-link' id='u-link' href='../User.aspx'>" +
                                           "<nav class=\"navbar\">" +
                                           "<ul>" +
                                               " <li><a>Xin Chào :" + ten + "</a>" +
                                                   "<ul>" +
                                                   "<li><a href=\"writePost.aspx\">POST NEWS</a></li>" +
                                                   " <li><a>UPDATE NEWS</a></li>" +
                                                   "<li><a>DELETE NEWS</a></li>" +
                                                   "<li><a href=\"Dangxuat.aspx\">LOGOUT</a></li>" +
                                                   " </ul>" +
                                                  " </li>" +
                                            "</ul>" +
                                            "  </nav> </section>";
                    }
                   /* user.InnerHtml = "<section class='user-function user-link user-logined' runat='server' id='name'><a class='u-link' id='u-link' href='../User.aspx'>" +
                                             "Xin Chào : " + ten + "</a></section>" +
                                      "<section class='user-function user-link user-logined' runat='server' id='name'><a class='u-link' id='logout-link' href='Dangxuat.aspx" +
                                      "'>Đăng Xuất</a></section>";
                    dangky.InnerHtml = "<a href='./User.aspx'><section class='item-category-text'> Xin Chào : "+ten+"</section></a>";  
                    dangnhap.InnerHtml= "<a href='./Dangxuat.aspx'><section class='item-category-text'>Đăng Xuất</section></a>";*/
                }
            }
                cate = (List<Category>)Application["Categories"];
            listcate.InnerHtml = "";
            for(int i = 0; i < cate.Count; i++)
            {
                listcate.InnerHtml += "<li class='item-category'><a href='./Category.aspx?name="+cate[i].Ten+"'><section class='item-category-text'>"+cate[i].Ten+"</section></a></li>";
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {

        }
    }
}