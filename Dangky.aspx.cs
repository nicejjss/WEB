using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class Dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                int dem = 0;
                string ten = Request.Form["txtTenTK"];
                string mail = Request.Form["txtEmail"];
                string matkhau = Request.Form["txtMatKhau"];
                List<User> users = (List<User>)Application["Users"];
                for(int i = 0; i < users.Count; i++)
                {
                    if(users[i].Mail== mail || users[i].Ten==ten)
                    {
                        dem++;
                    }
                }
                if (dem > 0)
                {
                    p.InnerText = "*Da co Tai Khoan Trung Email Hoac Ten Dang Nhap";
                }
                else
                {
                    User user = new User(ten, mail, matkhau);
                    users.Add(user);
                    Session["name"] = user.Ten;
                    Response.Redirect("index.aspx");
                }
            }
        }
    }
}