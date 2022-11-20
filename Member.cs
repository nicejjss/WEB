using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB
{
    public class Member
    {
        string tentk;
        string email;
        string password;
        int id;

        public string TenTK
        {
            get => tentk;
            set => tentk = value;
        }

        public string Email
        {
            get => email;
            set => email = value;
        }

        public string Password
        {
            get => password;
            set => password = value;

        }

        public int Id
        {
            get => id;
            set => id = value;
        }

    }
}