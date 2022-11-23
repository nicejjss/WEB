<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="waitingForNews.aspx.cs" Inherits="WEB.waitingForNews"  MasterPageFile="~/MasterPage/HeaderFooter.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="assets/css/waitingForNews.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <div id="container">
      <form runat="server" id="form1">
        <ul>
            <li>
                <div id="contain">
                    <div id="images">
                        <img src="assets/img/mail.png"  width="100px" height="100px" />
                    </div>
                    <div id="content">
                        <div id="head_content">
                            <label id="lb_content">Title : <span id="txtTitle">This is the title</span></label>                   
                            <label  id="lb_content">Author :   <span  id="txtAuthor">This is the Author</span> </label>                
                            <label  id="lb_content">Category :  <span  id="txtCategory">This is the Category</span></label>      
                        </div>
                        <div id="body_content">
                            <label>Content : <span id="txtContent">This is the content</span></label>
                        </div>
                    </div>
                      <div>
                       
                            <div style="float:right;">
                                <asp:Button ID="btn_submit" Width="60px" Height="30px" BackColor="White" Text="ALLOW" runat="server" OnClick="btn_submit_Click"/>
                                <asp:Button ID="btn_denied" Width="60px" Height="30px" BackColor="White" Text="DENY" runat="server"/>
                            </div>                         
                    
                     </div>
                </div>
            </li>
           <li>
                <div id="contain">
                    <div id="images">
                        <img src="assets/img/mail.png"  width="100px" height="100px" />
                    </div>
                    <div id="content">
                        <div id="head_content">
                            <label id="lb_content">Title : <span id="txtTitle">This is the title</span></label>                   
                            <label  id="lb_content">Author :   <span  id="txtAuthor">This is the Author</span> </label>                
                            <label  id="lb_content">Category :  <span  id="txtCategory">This is the Category</span></label>      
                        </div>
                        <div id="body_content">
                            <label>Content : <span id="txtContent">This is the content</span></label>
                        </div>
                    </div>
                    <div>
                            <div style="float:right;">
                                <asp:Button ID="Button1" Width="60px" Height="30px" BackColor="White" Text="ALLOW" runat="server"  OnClick="btn_submit_Click"/>
                                <asp:Button ID="Button2" Width="60px" Height="30px" BackColor="White" Text="DENY" runat="server"/>
                            </div>                         
                     </div>
                </div>
            </li>
        </ul>
      </form>            
    </div>
</asp:Content>