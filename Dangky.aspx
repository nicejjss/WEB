<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="WEB.Dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./assets/css/signin_signup.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
         <form id="form" class="form" runat="server" >
                <p class="news">NEWS</p>
                    <p class="fieldset">
                        <input type="text" placeholder="Nhập Tên Đăng Nhập" class="txtTenTK" id="txtTenTK" name="txtTenTK" onblur="check_register()"/>
                        <p id="messageErrTK"></p>
                    </p>
                     <p class="fieldset">
                        <input type="text" placeholder="Nhập Email của bạn" class="txtEmail" id="txtEmail" name="txtEmail"  onblur="check_register()" />
                        <p id="messageErrEmail"></p>
                         
                    </p>
                     <p class="fieldset">
                   
                        <input type="password" placeholder="Nhập mật khẩu của bạn" class="txtMatKhau" id="txtMatKhau" name="txtMatKhau" onblur="check_register()"/>
                        <p id="messageErrMK"></p>
                    </p>

                    <p class="fieldset">
                   
                        <input type="password" placeholder="Nhập lại mật khẩu của bạn" class="txtNLMatKhau" id="txtNLMatKhau" name="txtNLMatKhau" onblur="check_register()"/>
                        <p id="messageErrNLMK"></p>
                    </p>
                    <p>
                        <asp:Button id="btnSubmit" class="btnSubmit" Text="Đăng Ký" runat="server" />
                    </p>
                       

                    <div class="btnThree">
                        <button class="btnQuenmk" id="btnQuenmk"><p><a href="#0">Quên Mật Khẩu?</a></p></button>
                        <button class="btnDangky" id="btnDangky"> <p> <a href="Dangnhap.aspx">Có tài khoản</a></p></button>
                        <button class="btnQuaylai" id="btnQuaylai"><p><a href="index.aspx">Quay lại</a></p></button>
                    </div>		    
            </form>
     </div>
</asp:Content>
