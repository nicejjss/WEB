<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="writePost.aspx.cs" Inherits="WEB.writePost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link rel="stylesheet" href="./assets/css/writePost.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container content">
    <form id="form1" runat="server" method="post" enctype="multipart/form-data">
        <div id="contain">
            <h2 id="title_contain">PLEASE WRITE HERE</h2>
            <div class="conain_body">
                <div class="contain_input">
                    <label>Title:</label>
                 <input type="text" id="news_title" placeholder="Write your title here !" name="news_title" />
                </div>
                <div class="contain_input">
                     <label>Author:</label>
                 <input type="text" id="news_author" placeholder="What is the author ?" name="news_author"/>
                </div>
                <div class="contain_input">
                     <label>Category:</label>
                 <input type="text" id="news_category" placeholder="What is the category ?" name="news_category"/>
                </div>
                 <div class="contain_input">
                <p id="text_content">WRITE YOUR CONTENT HERE !</p>
                <textarea title="content" id="news_content" name="news_content"></textarea>
            </div>
                <div class="contain_input">
                 <label id="lb_file">CHOOSE YOUR IMAGE : </label> 
                 <input runat="server" type="file" name="postimg" id="postimg">
                <%-- <asp:FileUpload ID="news_file" runat="server"/>--%>
            </div>
            </div>
           
            
            <div id="lb_button">
                <asp:Button  ID="news_submit" Text="POST" runat="server"/>
                <button type="button"  id="news_back"><a href="index.aspx" style="text-decoration:none;">BACK</a></button>
            </div>
        </div>
    </form>
</div>
</asp:Content>
