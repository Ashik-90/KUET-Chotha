<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Second.adminlogiin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-top:20px">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150" src="img/adminlogin.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Admin Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                    <div class="row">
                     
                     <div class="col">
                       
                         <div class="form-group" style="margin:10px">
                             <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"> </asp:TextBox>
                         </div>

                         
                          <div class="form-group" style="margin:10px">
                             <asp:TextBox CSSClass="form-control" ID="TextBox2" runat="server" placeholder="Password"> </asp:TextBox>
                          </div>

                          <div class="form-group" >
                              <center>
                              <asp:Button class="btn btn-success btn-lg" runat="server" ID="Button1" Text="Login" style="width:400px; margin:5px 0px 5px 0px" OnClick="Button1_Click" />
                            </center>
                         </div>

                          </div>
                  </div>
                 
                  <div class="row">
                     

           
         </div>
      </div>
     </div>
              <a href="homepage.aspx"><b><< Back to Home</b></a><br><br>
    </div>
  </div>
 </div>
</asp:Content>
