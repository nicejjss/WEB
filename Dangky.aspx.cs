using System;
using System.Collections.Generic;
using System.IO;
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
            if ((bool)Session["login"] == true)
            {
                Response.Redirect("index.aspx");
            }

            string path = "listMember.xml";

            if (Request.Form["btnSubmit"] == "true")
            {
                List<Member> members = new List<Member>();
                if (File.Exists(Server.MapPath(path)))
                {
                    // Read file
                    System.Xml.Serialization.XmlSerializer reader = new System.Xml.Serialization.XmlSerializer(typeof(List<Member>));
                    StreamReader file = new StreamReader(Server.MapPath(path));

                    members = (List<Member>)reader.Deserialize(file);
                    members = members.OrderBy(Member => Member.Id).ToList();
                    file.Close();
                }

                Member mb = new Member();

                mb.TenTK = Request.Form["txtTenTK"];
                mb.Email = Request.Form["txtEmail"];
                mb.Password = Request.Form["txtMatKhau"];
                mb.Id = members.Count;


                bool checktrung = false;
                foreach (Member mem in members)
                {
                    if (mem.TenTK.Equals(mb.TenTK))
                    {
                        checktrung = true;
                        break;
                    }
                }

                if (!checktrung)
                {
                    foreach (Member mem in members)
                    {
                        if (mem.Id == mb.Id)
                        {
                            mb.Id++;
                        }
                    }

                    members.Add(mb);

                    //write file
                    System.Xml.Serialization.XmlSerializer writer = new System.Xml.Serialization.XmlSerializer(typeof(List<Member>));

                    System.IO.FileStream _file = System.IO.File.Create(Server.MapPath(path));

                    writer.Serialize(_file, members);
                    _file.Close();

                    //create session
                    Session["login"] = true;
                    Session["id"] = mb.Id;
                    Session["tentk"] = mb.TenTK;
                    Session["email"] = mb.Email;
                    Session["password"] = mb.Password;

                    if ((bool)Session["login"] == true)
                    {
                        Response.Redirect("index.aspx");
                    }
                }
                else
                {
                    string alert = "";
                    alert += "<script>alert('Tài khoản đã tồn tại!');</script>";
                    Response.Write(alert);
                }



            }
        }


    }
}