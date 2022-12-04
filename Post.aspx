<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true"
    CodeBehind="Post.aspx.cs" Inherits="WEB.Post1" %>
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
                    <span class="post-date"><%=post.Ngay.ToString("dd/MM/yyyy hh:mm")%></span>
                    <a class="post-cate" href="./Category.aspx?name=<%=post.Theloai %>"><%=post.Theloai %></a>
                    <span class="post-author"><%=post.Tacgia %></span>
                </section>
                <h1 class="post-title"><%=post.Tieude %></h1>
                <section class="post-body">
                    <section class="post-img">
                        <img src="./assets/img/posts/<%=post.Anh %>" alt="">
                    </section>
                    <section class="post-content">
                       <%=post.Noidung %>
                    </section>
                </section>
                <section style="margin-top: 20px;">Lượt xem: <%=post.Luotxem%></section>
            </section>
            <section class="display-news sticky col-s-12 col-m-6 col-4">
                <aside class="popular-news">
                    <section class="aside-title">
                        <section class="item-header aside-title-header">Tin Nổi Bật</section>
                        <!-- <a class="aside-see-all" href="#">Xem Tất Cả</a> -->
                    </section>
                    <section class="aside-body">
                       <% for (int i = 0; i < 3; i++)
                            { %>
                       <section class="aside-item">
                          <section class="aside-item-img">
                            <a href="./Post.aspx?name=<%=postswithview[i].Tieude %>">
                                <img class="aside-img-link" src="./assets/img/posts/<%=postswithview[i].Anh %>" alt="">
                            </a>
                          </section>
                          <section class="aside-item-title">
                            <a href="./Post.aspx?name=<%=postswithview[i].Tieude %>">
                                <%=postswithview[i].Tieude %>
                            </a>
                          </section>
                       </section>
                        <%} %>
                    </section>
                </aside>
              <%--  <section class="subcribe-box">
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
                </section>--%>
            </section>
        </section>
    </asp:Content>