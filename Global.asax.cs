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
            List<Post> Posts = new List<Post>();

            Users.Add(new User("daoducloc","locdaoduc2002@gmail.com","123456",true));
            Users.Add(new User("nguyena", "nguyena@gmail.com", "123456",false));
            Users.Add(new User("tranb", "tranb@gmail.com", "123456",false));

            Posts.Add(new Post("Mặt tối của những hệ thống siêu máy tính", "daoducloc",new DateTime(2022,03,12), "Kể từ năm 1964, thời điểm CDC 6600 – được xem như siêu máy tính đầu tiên trên thế giới – ra đời cho đến nay, một cuộc chạy đua được hình thành trong cộng đồng điện toán hiệu năng cao toàn cầu. " +
                "Đó là cải thiện hiệu năng siêu máy tính, bằng bất kỳ giá nào. Với các tiến bộ trong lĩnh vực tính toán, lưu trữ, hệ thống mạng và phần mềm, hiệu năng của các máy tính hàng đầu đã tăng gấp hàng nghìn tỷ lần kể từ khi CDC 6600 ra đời cho đến nay – từ mức hàng triệu phép tính dấu phẩy động mỗi giây(megaFLOPS) nay con số này đã đạt tới mức hàng quintillions phép tính mỗi giây(exaFLOPS). (1 quintillion bằng 1 tỷ tỷ). " +
                "Đứng đầu ngôi vương hiện nay là siêu máy tính của Mỹ có tên Frontier, với năng lực tính toán 1, 102 exaFLOPS theo thang đo benchmark High Performance Linpack. " +
                "Nhưng các cỗ máy với năng lực tính toán mạnh hơn cũng đang trong quá trình chế tạo và sẽ ra mắt trong tương lai không xa.", 12000, "Máy Tính","mattoi.png"));

            Posts.Add(new Post("Máy tính chạy bằng tảo lục lam trong 6 tháng","nguyena",DateTime.Today,"Chuyên gia Christopher Howe tại Đại học Cambridge cùng các đồng nghiệp vận hành một máy tính trong 6 tháng với nguồn năng lượng là tảo lục lam. " +
                "Nghiên cứu mới công bố trên tạp chí Energy & Environmental Science hôm 12/5. Trong nghiên cứu, vi khuẩn lam Synechocystis sp.PCC 6803 - thường gọi là tảo lục lam, có thể tạo ra oxy thông qua quá trình quang hợp khi tiếp xúc với ánh nắng - được đựng trong một hộp kín với kích thước tương đương pin AA làm bằng nhôm và nhựa trong. " +
                "Máy tính được đặt trên bệ cửa sổ tại một ngôi nhà của nhóm nghiên cứu trong thời gian phong tỏa do Covid - 19 từ tháng 2 - 8 / 2021.Trong thời gian này, pin làm từ tảo lục lam đã cung cấp dòng điện liên tục qua cực dương và cực âm để vận hành một bộ vi xử lý. Máy tính hoạt động theo chu kỳ 45 phút.Nhóm nhà khoa học dùng nó để tính tổng các số nguyên liên tiếp nhằm mô phỏng công việc tính toán, đòi hỏi 0,3 microwatt điện, và 15 phút ở chế độ chờ, cần 0,24 microwatt. " +
                "Bộ vi điều khiển đo đạc đầu ra của thiết bị và lưu trữ dữ liệu này trên đám mây để nhóm nghiên cứu phân tích. Howe cho biết, có hai giả thuyết tiềm năng về nguồn điện.Thứ nhất là bản thân vi khuẩn tạo ra các electron, từ đó sinh ra dòng điện. Thứ hai, vi khuẩn tạo ra các điều kiện khiến cực anode nhôm trong hộp bị ăn mòn trong phản ứng hóa học sản sinh electron.Thí nghiệm được tiến hành mà anode không mòn đáng kể. " +
                "Do đó, nhóm nghiên cứu tin rằng vi khuẩn sản xuất phần lớn dòng điện.",10000,"Máy Tính","maytinh.jpg"));

            Application["Users"] = Users;
            Application["Posts"] = Posts;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["name"] = null;
            Session["admin"] = false;
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