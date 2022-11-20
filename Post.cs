using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB
{
    public class Post
    {
        string tieude;
        string tacgia;
        string theloai;
        DateTime ngay;
        string noidung;
        int luotxem;
        string anh;

        public string Tieude { get => tieude; set => tieude = value; }
        public string Tacgia { get => tacgia; set => tacgia = value; }
        public DateTime Ngay { get => ngay; set => ngay = value; }
        public string Noidung { get => noidung; set => noidung = value; }
        public int Luotxem { get => luotxem; set => luotxem = value; }
        public string Theloai { get => theloai; set => theloai = value; }
        public string Anh { get => anh; set => anh = value; }

        public Post(string tieude, string tacgia, DateTime ngay, string noidung, int luotxem,string theloai,string anh)
        {
            this.Tieude = tieude;
            this.Tacgia = tacgia;
            this.Ngay = ngay;
            this.Noidung = noidung;
            this.Luotxem = luotxem;
            this.Theloai = theloai;
            this.Anh = anh;
        }

        public Post()
        {
        }
    }
}