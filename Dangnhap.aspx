﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="WEB.Dangnhap"  MasterPageFile="~/MasterPage/HeaderFooter.Master" %>
 <asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
         <link rel="stylesheet" href="./Style/login_register.css">
        <script language="javascript" src="./Style/login_register.js" ></script>
 </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <form id="form" class="form" runat="server">   
            <p class="news">NEWS</p>
                <p class="fieldset">
                    <input type="text" placeholder="Nhập Tên Đăng Nhập" class="txtTenTK" id="txtTenTK" />
                    <p id="messageErrTK"></p>
                </p>
                 <p class="fieldset">
       
                    <input type="text" placeholder="Nhập Email của bạn" class="txtEmail" id="txtEmail" />
                    <p id="messageErrEmail"></p>
                </p>
                 <p class="fieldset">
                   
                    <input type="password" placeholder="Nhập mật khẩu của bạn" class="txtMatKhau" id="txtMatKhau"/>
                    <p id="messageErrMK"></p>
                </p>

			    <p class="fieldset">
				    <input class="btnSubmit" id="btnSubmit" type="button" value="Đăng Nhập" onclick="check_login()">
			    </p>

                <div class="btnThree">
                    <button class="btnQuenmk" id="btnQuenmk"><p><a href="#0">Đổi Mật Khẩu?</a></p></button>
                    <button class="btnDangky" id="btnDangky"> <p> <a href="Dangky.aspx">Đăng ký</a></p></button>
                    <button class="btnQuaylai" id="btnQuaylai"><p><a href="index.aspx">Quay lại</a></p></button>
                </div>       	    	    
        </form>
     </div>
</asp:Content>