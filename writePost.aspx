<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="writePost.aspx.cs" Inherits="WEB.writePost"   MasterPageFile="~/MasterPage/HeaderFooter.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="assets/css/writePost.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
<div id="container">
    <form id="form1" runat="server">
        <div id="contain">
            <h2 id="title_contain">PLEASE WRITE HERE</h2>
            <div>
                <label>Title:</label>
                 <input type="text" id="news_title" placeholder="Write your title here !" />
                <label>Author:</label>
                 <input type="text" id="news_author" placeholder="What is the author ?"/>
                <label>Category:</label>
                  <input type="text" id="news_category" placeholder="What is the category ?"/>
            </div>
            <div>
                <p id="text_content">WRITE YOUR CONTENT HERE !</p>
                <textarea title="content" id="news_content"></textarea>
            </div>
            <div id="lb_div">
                 <label id="lb_file">CHOOSE YOUR EMAGE : </label> <input type="file" id="news_file" />
            </div>
            <div id="lb_button">
                <asp:Button ID="news_submit" OnClick="news_submit_Click" Text="POST" runat="server"/>
                <button type="button"  id="news_back"><a href="index.aspx" style="text-decoration:none;">BACK</a></button>
            </div>
        </div>
    </form>
</div>
</asp:Content>
