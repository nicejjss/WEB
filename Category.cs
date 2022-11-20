using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB
{
    public class Category
    {
        string ten;

        public string Ten { get => ten; set => ten = value; }

        public Category(string ten)
        {
            Ten = ten;
        }

        public Category()
        {
        }
    }
}