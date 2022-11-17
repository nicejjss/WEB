<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="WEB.Dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./assets/css/signin_signup.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content">
         <form id="form" class="form" runat="server" method="post" >
                <p class="news">Đăng Ký</p>
                    <p class="fieldset">
                        <input type="text" placeholder="Nhập Tên Đăng Nhập" class="txtTenTK" id="txtTenTK" name="txtTenTK"/>
                        <p id="messageErrTK"></p>
                    </p>
                     <p class="fieldset">
                        <input type="text" placeholder="Nhập Email của bạn" class="txtEmail" id="txtEmail" name="txtEmail"  />
                        <p id="messageErrEmail"></p>
                    </p>
                     <p class="fieldset">
                        <input type="password" placeholder="Nhập mật khẩu của bạn" class="txtMatKhau" id="txtMatKhau" name="txtMatKhau"/>
                        <p id="messageErrMK"></p>
                    </p>
                    <p class="fieldset">
                        <input type="password" placeholder="Nhập lại mật khẩu của bạn" class="txtNLMatKhau" id="txtNLMatKhau" name="txtNLMatKhau"/>
                        <p id="messageErrNLMK"></p>
                    </p>
                    <p class="showError" style="color: red" id="p" runat="server"></p>
                    <p class="fieldset">
                        <input type="submit" id="btnSubmit" class="btnSubmit" value="Đăng Ký" runat="server" onclick=" return CheckError()"/>
                    </p>
                     <p class="login">Đã Có Tài Khoản <a href="./Dangnhap.aspx">Đăng Nhập</a></p>
            </form>
     </div>
     <script src="./assets/js/signin_signup.js"></script>
</asp:Content>
