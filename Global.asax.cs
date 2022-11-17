using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WEB
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
          
            List<User> Users = new List<User>();
            Users.Add(new User("daoducloc","locdaoduc2002@gmail.com","123456"));
            Users.Add(new User("nguyena", "nguyena@gmail.com", "123456"));
            Users.Add(new User("tranb", "tranb@gmail.com", "123456"));
            Application["Users"] = Users;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["name"] = null;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}