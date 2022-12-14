<%@Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true"CodeBehind="index.aspx.cs" Inherits="WEB.index" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="./assets/css/gridview.css">
        <link rel="stylesheet" href="./assets/css/listnews.css">
        <link rel="stylesheet" href="./assets/css/asidenews.css">
        <link rel="stylesheet" href="./assets/css/index.css">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section class="content row" onload="onChange">
            <section class="display-news col-m-12 col-8">
                <section class="most-watched">
                    <section class="overlay">
                        <img src="./assets/img/posts/<%=viewpost.Anh%>" alt="">
                    </section>
                    <section class="title-detail">
                        <section class="category" id="cate" runat="server">
                            <a href="./Category.aspx?name=<%=viewpost.Theloai %>"><%=viewpost.Theloai %></a>
                        </section>
                        <a class="link" href="./Post.aspx?name=<%=viewpost.Tieude %>">
                            <%=viewpost.Tieude %>
                        </a>
                        <section class="date"><%=viewpost.Ngay.ToString("dd/MM/yyyy") %></section>
                    </section>
                    <section class="background"></section>
                </section>
                <section class="line">
                    <h2 class="newsest line-text">Tin Mới Nhất</h2>
                </section>
                <section class="lastest-news row">
                    <section class="list-posts col-s-12 col-6 row">
                        <% if(dem >= 2)
                            for (int i = 0; i <= 1; i++)
                            {
                                if (allposts[i] != null)
                                {%>
                        <section class="post col-12">
                            <section class="post-header">
                                <img class="post-img" src="./assets/img/posts/<%=allposts[i].Anh %>" alt="">
                            </section>
                            <section class="post-body">
                                <section class="post-date">
                                    <%=allposts[i].Ngay.ToString("dd/MM/yyyy") %>
                                </section>
                                <span> <a class="post-cate" href="./Categogy.aspx?name=<%=allposts[i].Theloai %>"><%=allposts[i].Theloai %></a></span>
                                <section class="post-title"><a href="./Post.aspx?name=<%=allposts[i].Tieude%>"><%=allposts[i].Tieude %></a></section>
                                <section class="post-detail"><%=allposts[i].Noidung %></section>
                                <section class="post-footer">
                                    <a class="post-footer-link" href="./Post.aspx?name=<%=allposts[i].Tieude %>">
                                        <button>Đọc Tiếp</button>
                                    </a>
                                </section>
                            </section>
                        </section>
                        <%}
                            } %>
                    <%--    <section class="post col-12">
                            <section class="post-header">
                                <img class="post-img" src="./assets/img/posts/maytinh.jpg" alt="">
                            </section>
                            <section class="post-body">
                                <section class="post-date">
                                    04/03/2002
                                </section>
                                <span> <a class="post-cate" href="./Categogy.aspx?name=">Máy tính</a></span>
                                <section class="post-title"><a href="./Post.aspx?id=">Duis Aute Irure Dolor In Reprehenderit
                                        In Voluptate</a></section>
                                <section class="post-detail">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                    veniam.</section>
                                <section class="post-footer">
                                    <a class="post-footer-link" href="./Post.aspx?id">
                                        <button>Đọc Tiếp</button>
                                    </a>
                                </section>
                            </section>
                        </section>--%>
                    </section>
                    <section class="list-posts col-s-12 col-6 row">
                         <% if (allposts.Count >= 4)
                                 for (int i = 2; i <= 3; i++)
                                 {
                                     if (allposts[i] != null)
                                     {%>
                        <section class="post col-12">
                            <section class="post-header">
                                <img class="post-img" src="./assets/img/posts/<%=allposts[i].Anh %>" alt="">
                            </section>
                            <section class="post-body">
                                <section class="post-date">
                                    <%=allposts[i].Ngay.ToString("dd/MM/yyyy") %>
                                </section>
                                <span> <a class="post-cate" href="./Categogy.aspx?name=<%=allposts[i].Theloai %>"><%=allposts[i].Theloai %></a></span>
                                <section class="post-title"><a href="./Post.aspx?name=<%=allposts[i].Tieude %>"><%=allposts[i].Tieude %></a></section>
                                <section class="post-detail"><%=allposts[i].Noidung %></section>
                                <section class="post-footer">
                                    <a class="post-footer-link" href="./Post.aspx?name=<%=allposts[i].Tieude %>">
                                        <button>Đọc Tiếp</button>
                                    </a>
                                </section>
                            </section>
                        </section>
                        <%}
                                }%>
              <%--          <section class="post col-12">
                            <section class="post-header">
                                <img class="post-img" src="./assets/img/posts/maytinh.jpg" alt="">
                            </section>
                            <section class="post-body">
                                <section class="post-date">
                                    04/03/2002
                                </section>
                                <span> <a class="post-cate" href="./Categogy.aspx?name=">Máy tính</a></span>
                                <section class="post-title"><a href="./Post.aspx?id=">Duis Aute Irure Dolor In Reprehenderit
                                        In Voluptate</a></section>
                                <section class="post-detail">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                    veniam.</section>
                                <section class="post-footer">
                                    <a class="post-footer-link" href="./Post.aspx?id">
                                        <button>Đọc Tiếp</button>
                                    </a>
                                </section>
                            </section>
                        </section>
                        <section class="post col-12">
                            <section class="post-header">
                                <img class="post-img" src="./assets/img/posts/maytinh.jpg" alt="">
                            </section>
                            <section class="post-body">
                                <section class="post-date">
                                    04/03/2002
                                </section>
                                <span> <a class="post-cate" href="./Categogy.aspx?id=">Máy tính</a></span>
                                <section class="post-title"><a href="./Post.aspx?id=">Duis Aute Irure Dolor In Reprehenderit
                                        In Voluptate</a></section>
                                <section class="post-detail">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                    veniam.</section>
                                <section class="post-footer">
                                    <a class="post-footer-link" href="./Post.aspx?id=">
                                        <button>Đọc Tiếp</button>
                                    </a>
                                </section>
                            </section>
                        </section>--%>
                    </section>
                </section>
                <section class="line">
                    <h2 class="line-another-news line-text">Tin Khác</h2>
                </section>
                <section class="another-news">
                    <%for (int i = 4; i < allposts.Count; i++)
                        {
                        %>
                    <section class="another-new">
                        <section class="new-header">
                            <a href="./Post.aspx?name=<%=allposts[i].Tieude%>">
                                <img src="./assets/img/posts/<%=allposts[i].Anh%>" alt="">
                            </a>

                        </section>
                        <section class="new-body">
                            <a class="post-cate new-cate" href="./Category.aspx?name=<%=allposts[i].Theloai%>"><%=allposts[i].Theloai%></a>
                            <span class="new-date post-date"><%=allposts[i].Ngay.ToString("dd/MM/yyyy") %></span>
                            <section class="new-title">
                                <a class="new-link" href="./Post.aspx?name=<%=allposts[i].Tieude%>"><%=allposts[i].Tieude%></a>
                            </section>
                            <section class="new-detail"><%=allposts[i].Noidung %></section>
                        </section>
                        <section class="new-footer">
                            <a class="new-footer-link" href="./Post.aspx?name=<%=allposts[i].Tieude %>">
                                <button>Đọc Tiếp</button>
                            </a>
                        </section>
                    </section>
                    <%} %>
                   <%-- <section class="another-new">
                        <section class="new-header">
                            <a href="./Post.aspx?id=">
                                <img src="./assets/img/posts/xedap.jpg" alt="">
                            </a>

                        </section>
                        <section class="new-body">
                            <a class="post-cate new-cate" href="./Category.aspx?name=Xe Đạp">Xe đạp</a>
                            <span class="new-date post-date">04/04/2002</span>
                            <section class="new-title">
                                <a class="new-link" href="./Post.aspx?id=">Donec consequat arcu at ultrices sodales quam
                                    erat aliquet diam</a>
                            </section>
                            <section class="new-detail">Donec consequat, arcu at ultrices sodales, quam erat aliquet
                                diam, sit amet interdum libero nunc accumsan nisi.</section>
                        </section>
                        <section class="new-footer">
                            <a class="new-footer-link" href="./Post.aspx?id=">
                                <button>Đọc Tiếp</button>
                            </a>
                        </section>
                    </section>--%>
<%--                    <section class="another-new">
                        <section class="new-header">
                            <a href="./Post.aspx?id=">
                                <img src="./assets/img/posts/xedap.jpg" alt="">
                            </a>

                        </section>
                        <section class="new-body">
                            <a class="post-cate new-cate" href="./Category.aspx?name=Xe Đạp">Xe đạp</a>
                            <span class="new-date post-date">04/04/2002</span>
                            <section class="new-title">
                                <a class="new-link" href="./Post.aspx?id=">Donec consequat arcu at ultrices sodales quam
                                    erat aliquet diam</a>
                            </section>
                            <section class="new-detail">Donec consequat, arcu at ultrices sodales, quam erat aliquet
                                diam, sit amet interdum libero nunc accumsan nisi.</section>
                        </section>
                        <section class="new-footer">
                            <a class="new-footer-link" href="./Post.aspx?id=">
                                <button>Đọc Tiếp</button>
                            </a>
                        </section>
                    </section>
                    <section class="another-new">
                        <section class="new-header">
                            <a href="./Post.aspx?id=">
                                <img src="./assets/img/posts/xedap.jpg" alt="">
                            </a>

                        </section>
                        <section class="new-body">
                            <a class="post-cate new-cate" href="./Category.aspx?name=Xe Đạp">Xe đạp</a>
                            <span class="new-date post-date">04/04/2002</span>
                            <section class="new-title">
                                <a class="new-link" href="./Post.aspx?id=">Donec consequat arcu at ultrices sodales quam
                                    erat aliquet diam</a>
                            </section>
                            <section class="new-detail">Donec consequat, arcu at ultrices sodales, quam erat aliquet
                                diam, sit amet interdum libero nunc accumsan nisi.</section>
                        </section>
                        <section class="new-footer">
                            <a class="new-footer-link" href="./Post.aspx?id=">
                                <button>Đọc Tiếp</button>
                            </a>
                        </section>
                    </section>
                    <section class="another-new">
                        <section class="new-header">
                            <a href="./Post.aspx?id=">
                                <img src="./assets/img/posts/xedap.jpg" alt="">
                            </a>

                        </section>
                        <section class="new-body">
                            <a class="post-cate new-cate" href="./Category.aspx?name=Xe Đạp">Xe đạp</a>
                            <span class="new-date post-date">04/04/2002</span>
                            <section class="new-title">
                                <a class="new-link" href="./Post.aspx?id=">Donec consequat arcu at ultrices sodales quam
                                    erat aliquet diam</a>
                            </section>
                            <section class="new-detail">Donec consequat, arcu at ultrices sodales, quam erat aliquet
                                diam, sit amet interdum libero nunc accumsan nisi.</section>
                        </section>
                        <section class="new-footer">
                            <a class="new-footer-link" href="./Post.aspx?id=">
                                <button>Đọc Tiếp</button>
                            </a>
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
                            <a href="./Post.aspx?name=<%=postswithview[i].Tieude%>">
                                <%=postswithview[i].Tieude%>
                            </a>
                          </section>
                       </section>
                        <%} %>
<%--                       <section class="aside-item">
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
                     </section>--%>
                    </section>
                </aside>
<%--                <section class="subcribe-box">
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
    <script>
        function onChange(){
  var a = document.getElementsByTagName("a");
   a.value =a.value.replace(/>/g, "&gt;").replace(/</g, "&lt;").replace(/"/g, "&quot;").replace(/'/g,"&apos;");
   document.getElementsByTagName("a").value = a.value;
}
    </script>
    </asp:Content>