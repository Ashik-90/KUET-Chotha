<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Second.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="margin-top:20px">
      <div class="row">
         <div class="col-md-5">
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
                           <h4 style="color:green">Your Profile</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                    <div class="row">
                     
                     <div class="col-md-6">
                       
                         <div class="form-group" style="margin:10px">
                             <label>Name</label>
                             <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" ReadOnly="True"> </asp:TextBox>
                         </div>
                         </div>
                         
                        <div class="col-md-6">
                       
                         <div class="form-group" style="margin:10px">
                             <label>Roll</label>
                             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Roll Number" ReadOnly="True"> </asp:TextBox>
                         </div>
                         </div>
                    </div>

                  <div class="row">
                     <div class="col-md-6">
                       
                         <div class="form-group" style="margin:10px">
                             <label>Dept</label>
                             <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Department" ReadOnly="True"> </asp:TextBox>
                         </div>
                         </div>
                          <div class="col-md-6">
                       
                         <div class="form-group" style="margin:10px">
                             <label>Mobile</label>
                             <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Mobile Number" TextMode="Phone"> </asp:TextBox>
                         </div>
                         </div>
                    </div>

                   <div class="row">
                       <div class="col">
                       <div class="form-group" style="margin:10px">
                       <label> E-mail </label>
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Your e-mail" TextMode="Email"> </asp:TextBox>
                       </div>
                           </div>


                   </div>

                   

                 </div>
                   <div class="row">
                       <div class="col-md-4 mx-auto">
                           <center>
                           <label style="background-color:red; border-radius:10px; color: yellow; padding:4px"> Change password</label>
                      </center>
                         </div>
                   </div>

                   <div class="row">
                       <div class="col-md-4">
                            <div class="form-group" style="margin:10px">
                                 <label>Old Password </label>
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                           </div>

                        <div class="col-md-4">
                            <div class="form-group" style="margin:10px">
                                 <label>New Password </label>
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Type Password" TextMode="Password"></asp:TextBox>
  
                                </div>
                           </div>

                        <div class="col-md-4">
                            <div class="form-group" style="margin:10px">
                                 <label>Re-type New Password </label>
                                <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Re-type Password" TextMode="Password"></asp:TextBox>

                             
                                </div>
                           </div>

                   </div>


                  
            <div class="form-group" >
                              <center>
                              <asp:Button class="btn btn-primary btn-lg" runat="server" ID="Button1" Text="Update" OnClick="Button1_Click"/>
                            </center>
                 </div>
 
       
      
     </div>
             <a href="homepage.aspx"><b><< Back to Home</b></a><br><br>
    </div>

         
          <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="300" src="img/profilebook.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Uploaded Chotha - </h4>
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
                         <asp:GridView class="table table-hover table-dark" ID="GridView1" runat="server"  DataKeyNames="c_id" AllowPaging="true"></asp:GridView>
                         <columns>

                                <asp:BoundField DataField="c_id" HeaderText="Chotha ID" SortExpression="c_id" />
                              
                                <asp:BoundField DataField="c_title" HeaderText="Course" SortExpression="c_title" />
                                <asp:BoundField DataField="heading" HeaderText="Title" SortExpression="heading" />
                                <asp:BoundField DataField="dscpt" HeaderText="Description" SortExpression="dscpt" />
                         </columns>
                     </div>
                  </div>
            
       
      </div>
     </div>
          
    </div>
  </div>
</asp:Content>
