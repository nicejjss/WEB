﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="WEB.Category1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./assets/css/gridview.css">
    <link rel="stylesheet" href="./assets/css/asidenews.css">
    <link rel="stylesheet" href="./assets/css/category.css">
    <link rel="stylesheet" href="./assets/css/listnews.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="content row">
          <section class="display-news col-m-12 col-8">
            <h1 runat="server" id="catetitle"></h1>
            <section class="list-display row">
                <%if (dem > 0)
                    {
                        for (int i = 0; i < postscate.Count; i++)
                        {
                %>
                 <section class="col-12 item-display">
                    <section class="another-new">
                      <section class="new-header">
                          <a href="./Post.aspx?name=<%=postscate[i].Tieude%>">
                              <img src="./assets/img/posts/<%=postscate[i].Anh%>" alt="">
                          </a>
                      </section>
                      <section class="new-body">
                          <a class="post-cate new-cate" href="./Category.aspx?name=<%=postscate[i].Theloai%>"><%=postscate[i].Theloai%></a>
                          <span class="new-date post-date"><%=postscate[i].Ngay.ToString("dd/MM/yyyy")%></span>
                          <section class="new-title">
                              <a class="new-link" href="./Post.aspx?name=<%=postscate[i].Tieude%>"><%=postscate[i].Tieude %></a>
                          </section>
                          <section class="new-detail"><%=postscate[i].Noidung%></section>
                      </section>
                      <section class="new-footer">
                          <a class="new-footer-link" href="./Post.aspx?name=<%=postscate[i].Tieude%>">
                              <button>Đọc Tiếp</button>
                          </a>
                      </section>
                  </section>
                   </section>
               <% }

                   }
                   else {
                       Response.Write("<h1 style='font-size: 24px; margin-top: 20px'>Không có tin</h1>");
                   }%>
<%--                   <section class="col-12 item-display">
                    <section class="another-new">
                      <section class="new-header">
                          <a href="./Post?id=">
                              <img src="./assets/img/posts/xedap.jpg" alt="">
                          </a>
                      </section>
                      <section class="new-body">
                          <a class="post-cate new-cate" href="./Category.aspx?name=Xe Đạp">Xe đạp</a>
                          <span class="new-date post-date">04/04/2002</span>
                          <section class="new-title">
                              <a class="new-link" href="./Post.aspx?name=">Donec consequat arcu at ultrices sodales quam
                                  erat aliquet diam</a>
                          </section>
                          <section class="new-detail">
                            Donec consequat, arcu at ultrices sodales, quam erat aliquet
                              diam, sit amet interdum libero nunc accumsan nisi.</section>
                      </section>
                      <section class="new-footer">
                          <a class="new-footer-link" href="./Post.aspx?name=">
                              <button>Đọc Tiếp</button>
                          </a>
                      </section>
                  </section>
                   </section>--%>
            </section>
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
<%--            <section class="subcribe-box">
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
