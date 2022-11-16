using System;
using System.Collections.Generic;
using System.IO;
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
           /* if ((bool)Session["login"] == true)
            {
                Response.Redirect("index.aspx");
            }*/
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string path = "listMember.xml";

           
                List<Member> list = new List<Member>();

                if (File.Exists(Server.MapPath(path)))
                {
                    // Đọc file
                    System.Xml.Serialization.XmlSerializer reader = new System.Xml.Serialization.XmlSerializer(typeof(List<Member>));
                    StreamReader file = new StreamReader(Server.MapPath(path));

                    list = (List<Member>)reader.Deserialize(file);
                    list = list.OrderBy(Member => Member.Id).ToList();
                    file.Close();
                }

                Member mb = new Member();
                mb.Id = list.Count;
                mb.TenTK = Request.Form["txtTenTK"];
                mb.Email = Request.Form["txtEmail"];
                mb.Password = Request.Form["txtMatKhau"];

            bool checktrung = false;
                foreach (Member mem in list)
                {
                    if (mem.TenTK.Equals(mb.TenTK) && mem.Password.Equals(mb.Password))
                    {
                        checktrung = true;
                        mb.Id = mem.Id;
                        break;
                    }
                }

                if (checktrung == false)
                {
                    string alert = "";
                    alert += "<script>alert('Tài khoản hoặc mật khẩu không đúng!');</script>";
                    Response.Write(alert);
                }
                else
                {
                    // Tạo session
                    Session["login"] = true;
                    Session["id"] = mb.Id;
                    Session["tentk"] = mb.TenTK;
                    Session["email"] = mb.Email;
                    Session["password"] = mb.Password;
                }

                if ((bool)Session["login"] == true)
                {
                    Response.Redirect("index.aspx");
                }
            
        }
    }
}