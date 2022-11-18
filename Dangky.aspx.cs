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
                string ten = Request.Form["txtTenTK"].Trim();
                string mail = Request.Form["txtEmail"].Trim();
                string matkhau = Request.Form["txtMatKhau"].Trim();
                List<User> users = (List<User>)Application["Users"];
                for(int i = 0; i < users.Count; i++)
                {
                    if(users[i].Mail.ToLower()== mail.ToLower() || users[i].Ten.ToLower()==ten.ToLower())
                    {
                        dem++;
                        break;
                    }
                }
                if (dem > 0)
                {
                    p.InnerText = "*Da co Tai Khoan Trung Email Hoac Ten Dang Nhap";
                }
                else
                {
                    User user = new User(ten, mail, matkhau,false);
                    users.Add(user);
                    Session["name"] = user.Ten;
                    Session["admin"] = user.IsAdmin;
                    Response.Redirect("index.aspx");
                }
            }
        }
    }
}