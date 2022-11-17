using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB
{
    public class User
    {
        string ten;
        string mail;
        string matkhau;

        public string Ten { get => ten; set => ten = value; }
        public string Mail { get => mail; set => mail = value; }
        public string Matkhau { get => matkhau; set => matkhau = value; }

        public User(string ten, string mail, string matkhau)
        {
            this.Ten = ten;
            this.Mail = mail;
            this.Matkhau = matkhau;
        }

        public User()
        {
        }
    }
}