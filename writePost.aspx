<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="writePost.aspx.cs" Inherits="WEB.writePost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link rel="stylesheet" href="./assets/css/writePost.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container content">
    <form id="form1" runat="server" action="AddPost.aspx" onchange="Changeimg()">
        <div id="contain">
            <h2 id="title_contain">PLEASE WRITE HERE</h2>
            <div class="contain_body">
                <div class="contain_input">
                    <label>Tiêu Đề:</label>
                 <input class="contain_data" type="text" id="title" placeholder="Ghi Tiêu Đề" name="news_title" />
                </div>
                <div class="contain_input">
                     <label>Thể Loại:</label>
                 <select class="contain_data" runat="server" id="category" placeholder="Chọn Thể Loại" name="news_category">
                 </select>
                </div>
                 <div class="contain_input">
                 <label id="lb_file">Ảnh: </label> 
                 <input class="contain_data" runat="server" type="file" name="postimg" id="postimg">
                <%-- <asp:FileUpload ID="news_file" runat="server"/>--%>
            </div>
            <div class="contain_input contain_img">
                <img id="imgdisplay">
            </div>
                 <div class="contain_input">
                <label id="text_content">Nội Dung:</label>
                <textarea class="contain_data" title="content" id="news_content" name="news_content"></textarea>
            </div>
            </div>
           
            <div id="lb_button">
                 <%--<asp:Button  ID="news_submit" Text="POST" runat="server" onclick="return Checkpost()"/>--%> 
                <input class="btn btn-submit" runat="server" type="submit" value="POST" id="submit" onclick="return Checkpost()">
                <button class="btn btn-cancel" type="button"  id="news_back"><a href="index.aspx" style="text-decoration:none;">BACK</a></button>
            </div>
        </div>
    </form>
    <script src="./assets/js/writePost.js"></script>
</div>
</asp:Content>
