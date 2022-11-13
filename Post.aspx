<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="WEB.Post" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./assets/css/gridview.css">
    <link rel="stylesheet" href="./assets/css/listnews.css">
    <link rel="stylesheet" href="./assets/css/asidenews.css">
    <link rel="stylesheet" href="./assets/css/post.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="content row">
          <section class="display-news col-m-12 col-8">
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
