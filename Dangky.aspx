<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="WEB.Dangky"  MasterPageFile="~/MasterPage/HeaderFooter.Master" %>
 <asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
         <link rel="stylesheet" href="./Style/login_register.css">
        <script language="javascript" src="./Style/login_register.js" ></script>
 </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <form id="form" class="form" runat="server">
                <p class="news">NEWS</p>
                    <p class="fieldset">
                        <input type="text" placeholder="Nhập Tên Đăng Nhập" class="txtTenTK" id="txtTenTK"  onblur="check_register()"/>
                        <p id="messageErrTK"></p>
                    </p>
                     <p class="fieldset">
       
                        <input type="text" placeholder="Nhập Email của bạn" class="txtEmail" id="txtEmail"  onblur="check_register()" />
                        <p id="messageErrEmail"></p>
                    </p>
                     <p class="fieldset">
                   
                        <input type="password" placeholder="Nhập mật khẩu của bạn" class="txtMatKhau" id="txtMatKhau"  onblur="check_register()"/>
                        <p id="messageErrMK"></p>
                    </p>

                    <p class="fieldset">
                   
                        <input type="password" placeholder="Nhập lại mật khẩu của bạn" class="txtNLMatKhau" id="txtNLMatKhau"  onblur="check_register()"/>
                        <p id="messageErrNLMK"></p>
                    </p>
                    <p>
                        <button type="submit" value="true" id="btnSubmit" class="btnSubmit">Đăng Ký</button>
                    </p>
                       

                    <div class="btnThree">
                        <button class="btnQuenmk" id="btnQuenmk"><p><a href="#0">Quên Mật Khẩu?</a></p></button>
                        <button class="btnDangky" id="btnDangky"> <p> <a href="Dangnhap.aspx">Có tài khoản</a></p></button>
                        <button class="btnQuaylai" id="btnQuaylai"><p><a href="index.aspx">Quay lại</a></p></button>
                    </div>		    
            </form>
     </div>
</asp:Content>
