<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true"
    CodeBehind="Post.aspx.cs" Inherits="WEB.Post" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="./assets/css/gridview.css">
        <link rel="stylesheet" href="./assets/css/asidenews.css">
        <link rel="stylesheet" href="./assets/css/post.css">
        <link rel="stylesheet" href="./assets/css/listnews.css">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section class="content row">
            <section class="post col-m-12 col-8">
                <section class="post-relate">
                    <span class="post-date">04/03/2002</span>
                    <a class="post-cate" href="./Category.aspx?name=may tinh">Máy Tính</a>
                    <span class="post-author">ADMIN</span>
                </section>
                <h1 class="post-title">HACOM thay đổi nhận diện thương hiệu</h1>
                <section class="post-body">
                    <section class="post-img">
                        <img src="./assets/img/posts/hacom.jpg" alt="">
                    </section>
                    <section class="post-content">
                        Đơn vị thành lập từ năm 2001 với tiền thân là Công ty TNHH Máy tính Hà Nội. Ban đầu, công ty kinh doanh máy tính và linh kiện phục vụ học tập, làm việc. Đến nay, nhóm khách hàng đã mở rộng gồm cá nhân và doanh nghiệp, tập đoàn trong lẫn ngoài nước. Công ty cũng đa dạng dịch vụ và giải pháp chuyên sâu về máy tính, thiết bị văn phòng, thiết bị siêu thị, giải pháp camera và thiết bị an ninh, trở thành đối tác chiến lược của nhiều thương hiệu toàn cầu.
                        HACOM hướng tới mục tiêu nâng cao chất lượng, đưa sản phẩm đến với khách hàng nhanh nhất, không
                        ngừng cải thiện dịch vụ, hậu mãi. Cùng với sự thay đổi nhận diện thương hiệu, đơn vị kỳ vọng trở
                        thành hệ thống siêu thị phát triển về kinh doanh máy tính phủ rộng, chuyên sâu, lớn mạnh trên
                        toàn quốc.

                        Sau 20 năm, logo đã trở thành thương hiệu quen thuộc với khách hàng. Tuy vậy, với những mục tiêu
                        và định hướng trong giai đoạn phát triển mới, ban lãnh đạo quyết định thay đổi logo kể từ ngày
                        1/9.

                        Biểu tượng mới gồm chấm tròn đỏ: tượng trưng cho sự tập trung, kiên định với định hướng phát
                        triển. Chữ C cách điệu trong hình tròn liên tưởng tới bánh xe, sự chuyển động không ngừng, thể
                        hiện tinh thần luôn thay đổi, tiếp thu và luôn tiến về phía trước.

                        HACOM vẫn giữ nguyên màu sắc đã sử dụng ở logo cũ với màu xanh đậm: thể hiện sự tin cậy, chắc
                        chắn; màu đỏ thể hiện nhiệt huyết và khát vọng tuổi trẻ.
                    </section>
                </section>
            </section>
            <section class="display-news col-s-12 col-m-6 col-4">
                <aside class="popular-news">
                    <section class="aside-title">
                        <section class="item-header aside-title-header">Tin Nổi Bật</section>
                        <!-- <a class="aside-see-all" href="#">Xem Tất Cả</a> -->
                    </section>
                    <section class="aside-body">
                        <section class="aside-item">
                            <section class="aside-item-img">
                                <a href="./Post.aspx?id=">
                                    <img class="aside-img-link" src="./assets/img/posts/chaybo.jpg" alt="">
                                </a>
                            </section>
                            <section class="aside-item-title">
                                <a href="./Post.aspx?id=">
                                    Fusce Ullamcorper Elit At Felis Cursus Suscipit
                                </a>
                            </section>
                        </section>
                        <section class="aside-item">
                            <section class="aside-item-img">
                                <a href="./Post.aspx?id=">
                                    <img class="aside-img-link" src="./assets/img/posts/chaybo.jpg" alt="">
                                </a>
                            </section>
                            <section class="aside-item-title">
                                <a href="./Post.aspx?id=">
                                    Fusce Ullamcorper Elit At Felis Cursus Suscipit
                                </a>
                            </section>
                        </section>
                        <section class="aside-item">
                            <section class="aside-item-img">
                                <a href="./Post.aspx?id=">
                                    <img class="aside-img-link" src="./assets/img/posts/chaybo.jpg" alt="">
                                </a>
                            </section>
                            <section class="aside-item-title">
                                <a href="./Post.aspx?id=">
                                    Fusce Ullamcorper Elit At Felis Cursus Suscipit
                                </a>
                            </section>
                        </section>
                    </section>
                </aside>
                <section class="subcribe-box">
                    <section class="subcribe-img">
                        <img src="./assets/img/mail.png" alt="">
                    </section>
                    <h1>NEWS LETTER</h1>
                    <form class="mail-form" action="">
                        <input class="mail-input" type="text" placeholder="Your mail" name="mail">
                        <button class="mail-btn">
                            <input type="submit" name="" id="" value="">
                            <img src="./assets/img/paperairplane.png" alt="">
                        </button>
                    </form>
                    <p>By subscribing you will receive new articles in your email.</p>
                </section>
            </section>
        </section>
    </asp:Content>