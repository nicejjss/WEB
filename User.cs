using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB
{
    public partial class User
    {
        string ten;
        string mail;
        string matkhau;
        bool isAdmin;

        public User()
        {
        }

        public string Ten { get => ten; set => ten = value; }
        public string Mail { get => mail; set => mail = value; }
        public string Matkhau { get => matkhau; set => matkhau = value; }
        public bool IsAdmin { get => isAdmin; set => isAdmin = value; }

        public User(string ten, string mail, string matkhau, bool isAdmin)
        {
            this.Ten = ten;
            this.Mail = mail;
            this.Matkhau = matkhau;
            this.IsAdmin = isAdmin;
        }
    }
}