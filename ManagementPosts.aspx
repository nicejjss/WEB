﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="ManagementPosts.aspx.cs" Inherits="WEB.ManagementPosts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./assets/css/manegementposts.css">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <form runat="server">
         <asp:Button ID="sort" runat="server" OnClick="sort_Click" Text="Sort Alphabet" />
        <asp:Button ID="sort1" runat="server" OnClick="sort1_Click" Text="Sort Author" />
    </form>--%>
    
     <div id="container" class="content" runat="server">
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Ảnh</th>
                    <th>Tiêu Đề</th>
                    <th>Tác Giả</th>
                    <th>Ngày Tạo</th>
                    <th>Hành Động</th>
                    <th>Trạng Thái</th>
                </tr>
            </thead>
            <tbody>
                <%if (postsname.Count > 0)
                    {
                        for (int i = 0; i<postsname.Count; i++)
                        {%>
                      
                <tr>
                    <td><%=postsname[i].Id %></td>
                    <td><img src="./assets/img/posts/<%=postsname[i].Anh %>" width="150" alt=""></td>
                    <td><%=postsname[i].Tieude %></td>
                    <td><%=postsname[i].Tacgia %></td>
                       <td><%=postsname[i].Ngay.ToString("dd/MM/yyyy")%></td>
                    <td>
                        <a class="function function-delete" href="./ManagementPosts.aspx?delete=<%=postsname[i].Id%>"><button class="btn btn-delete">Xoá</button></a>
                       <%-- <a class="function function-delete" href="./writePost.aspx?update=<%=postsname[i].Id%>"><button class="btn btn-delete">Sửa</button></a>--%>
                        <a class="function function-detail" href="./Post.aspx?detail=<%=postsname[i].Id %>"><button class="btn btn-detail">Chi Tiết</button></a>
                    </td>
                    <td>
                        <%  if (Session["admin"].ToString() == "True")
                            {
                                if (postsname[i].Ispublic == true) Response.Write("<a href='./ManagementPosts.aspx?disallow=" + postsname[i].Id + "'>Đã Đăng</a>");
                                else Response.Write("<a href='./ManagementPosts.aspx?allow=" + postsname[i].Id + "'>Chưa Đăng</a>");
                            }
                            else { 
                                if (postsname[i].Ispublic == true) Response.Write("Đã Đăng");
                                else Response.Write("Chưa Đăng");
                            }
                                %>                        
                    </td>
                </tr>
                <%}
                    }
                    else Response.Write("Ban chua dang tin len"); %>
      
            </tbody>
        </table>
    </div>
</asp:Content>