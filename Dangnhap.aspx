<%@Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="WEB.Dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./assets/css/signin_signup.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content">
        <form  id="form" class="form" runat="server">   
            <p class="news">Đăng Nhập</p>
                <p class="fieldset">
                    <input type="text" placeholder="Nhập Tên Đăng Nhập" class="txtTenTK" id="txtTenTK"  name="txtTenTK"/>
                    <p id="messageErrTK"></p>
                </p>
                 <p class="fieldset">
                    <input type="password" placeholder="Nhập mật khẩu của bạn" class="txtMatKhau" id="txtMatKhau" name="txtMatKhau"/>
                    <p id="messageErrMK"></p>
                </p>
                <p class="showError" style="color: red" id="p" runat="server"></p>
                <p class="fieldset">
                   <input type="submit" id="btnSubmit" class="btnSubmit" value="Đăng Nhập" runat="server" onclick=" return CheckError()"/>
                </p>    	    
        </form>
     </div>
     <script src="./assets/js/signin.js"></script>

</asp:Content>
