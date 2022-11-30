<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="waitingForNews.aspx.cs" Inherits="WEB.waitingForNews" MasterPageFile="~/MasterPage/HeaderFooter.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="assets/css/customWait.css" />
    
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--    <asp:GridView ID="GridView1" runat="server" CssClass="Grid" AutoGenerateColumns="false"
        EmptyDataText="No records has been added.">
        <Columns>
            <asp:BoundField DataField="Image" HeaderText="Image" ItemStyle-Width="120" />
            <asp:BoundField DataField="Title" HeaderText="Title" ItemStyle-Width="120" />
            <asp:BoundField DataField="Author" HeaderText="Author" ItemStyle-Width="120" />
            <asp:BoundField DataField="Category" HeaderText="Category" ItemStyle-Width="120" />
            <asp:BoundField DataField="Content" HeaderText="Content" ItemStyle-Width="120" />
        </Columns>
    </asp:GridView>--%>
    
     <div id="container">
      <form runat="server" id="form1">
        <ul>
             <% for (int i = 0; i < postscate.Count; i++)
                 {
            %>
                     <li id="<%=postscate[i].Id%>" class="newsName">
                         <ul>
                             <li>
                                  <div id="contain">
                                        <div id="images">
                                            <img  src="./assets/img/posts/<%=postscate[i].Anh%>"  width=100 height=100 />
                                        </div>
                                        <div id="content">
                                            <div id="head_content">
                                                <label">Title : <span id="txtTitle"><%=postscate[i].Tieude%></span></label>                   
                                                <label>Author :   <span  id="txtAuthor"><%=postscate[i].Tacgia%></span> </label>                
                                                <label>Category :  <span  id="txtCategory"><%=postscate[i].Theloai%></span></label>      
                                            </div>
                                            <div id="body_content">
                                                <label>Content : <span id="txtContent"><%=postscate[i].Noidung%></span></label>
                                            </div>
                                            
                                          
                                        </div>
                                    </div>
                             </li>
                             <li>     
                                 <div  id="footer">
                                      <div style="float:right;">
                                          <form method="GET">
                                              <input type="number" value ="<%=postscate[i].Id%> " id="ID" name="ID" class="ID" runat="server"/>
                                                <asp:Button ID="btn_sub" Width="60px" Height="30px"  Text="POST" runat="server" OnClick="btn_sub_Click"  />
                                                <asp:Button ID="btn_denied" Width="60px" Height="30px"  Text="DENY" runat="server" OnClick="btn_denied_Click1"/>
                                          </form>
                                        
                                    </div>    
                                 </div>
                                                             
                             </li>
                         </ul>                                               
                    </li>
                <%}%>
        </ul>
      </form>            
    </div>
</asp:Content>
