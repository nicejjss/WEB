using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                int dem = 0;
                string ten = Request.Form["txtTenTK"].Trim();
                string matkhau = Request.Form["txtMatKhau"].Trim();
                List<User> users = (List<User>)Application["Users"];
                for (int i = 0; i < users.Count; i++)
                {
                    if (users[i].Ten.ToLower() == ten.ToLower() &&  users[i].Matkhau==matkhau)
                    {
                        dem++;
                        break;
                    }
                }
                if (dem == 0)
                {
                    p.InnerText = "*Sai ten Tai Khoan hoac Mat Khau";
                }
                else
                {
                    Session["name"] = ten;
                    Response.Redirect("index.aspx");
                }
            }
        }
    }
}