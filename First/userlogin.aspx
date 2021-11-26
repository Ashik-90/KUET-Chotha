<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="First.userlogin" %>
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
                           <img width="150" src="img/userlogin.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Member Login</h3>
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
                             <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Your Roll"> </asp:TextBox>
                         </div>

                         
                          <div class="form-group" style="margin:10px">
                             <asp:TextBox CSSClass="form-control" ID="TextBox2" runat="server" placeholder="Password"> </asp:TextBox>
                        </div>

                          <div class="form-group" >
                              <center>
                              <asp:Button class="btn btn-success btn-lg" runat="server" ID="Button1" Text="Login" style="width:400px; margin:5px 0px 5px 0px"/>
                            </center>
                         </div>

                            <div class="form-group" >
                                <center>
                            <a href = "usersignup.aspx">
                                <input class="btn btn-info btn-lg" id="Button2" type="button" value="SingUp" style="width:400px;  margin:5px 0px 5px 0px" />
                                 </a>
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
