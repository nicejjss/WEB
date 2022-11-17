<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="WEB.Dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./assets/css/signin_signup.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content">
        <form id="form" class="form" runat="server">   
            <p class="news">NEWS</p>
                <p class="fieldset">
                    <input type="text" placeholder="Nhập Tên Đăng Nhập" class="txtTenTK" id="txtTenTK"  name="txtTenTK" onblur="check_login()"/>
                    <p id="messageErrTK"></p>
                </p>
                 <p class="fieldset">
       
                    <input type="text" placeholder="Nhập Email của bạn" class="txtEmail" id="txtEmail" name="txtEmail" onblur="check_login()"/>
                    <p id="messageErrEmail"></p>
                </p>
                 <p class="fieldset">
                   
                    <input type="password" placeholder="Nhập mật khẩu của bạn" class="txtMatKhau" id="txtMatKhau" name="txtMatKhau" onblur="check_login()"/>
                    <p id="messageErrMK"></p>
                </p>

			    <p class="fieldset">
				    <asp:Button id="btnSubmit" class="btnSubmit" Text="Đăng Nhập" runat="server" />
			    </p>

                <div class="btnThree">
                    <button class="btnQuenmk" id="btnQuenmk"><p><a href="#0">Đổi Mật Khẩu?</a></p></button>
                    <button class="btnDangky" id="btnDangky"> <p> <a href="Dangky.aspx">Đăng ký</a></p></button>
                    <button class="btnQuaylai" id="btnQuaylai"><p><a href="index.aspx">Quay lại</a></p></button>
                </div>       	    	    
        </form>
     </div>
</asp:Content>
