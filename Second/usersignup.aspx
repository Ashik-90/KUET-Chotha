<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Second.usersignup" %>
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
                           <img width="150" src="img/signup.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Sign Up</h4>
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
                             <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" > </asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox1" CssClass="ValidationError" runat="server" ErrorMessage="Must Provide Roll" ForeColor="red" ToolTip="Name is a required field"></asp:RequiredFieldValidator>  

                             </div>
                         </div>
                         
                        <div class="col-md-6">
                       
                         <div class="form-group" style="margin:10px">
                             <label>Roll</label>
                             <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Roll Number" TextMode="Number" MaxLength="7"> </asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox2" CssClass="Validation" runat="server" ErrorMessage="Must Provide Roll" ForeColor="red" ToolTip="Roll is a required field"></asp:RequiredFieldValidator>
                             </div>
                         </div>
                    </div>

                  <div class="row">
                     <div class="col-md-6">
                       
                         <div class="form-group" style="margin:10px">
                             <label>Dept</label>
                             <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Department"> </asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox3" CssClass="ValidationError" runat="server" ErrorMessage="Required" ForeColor="red" ToolTip="Dept. is a required field"></asp:RequiredFieldValidator>
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
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox5" CssClass="ValidationError" runat="server" ErrorMessage="Provide your valid E-mail" ForeColor="red"  ToolTip="E-mail is a required field"></asp:RequiredFieldValidator>
                       </div>
                           </div>


                   </div>

                   <div class="row">
                       <div class="col-md-6">
                            <div class="form-group" style="margin:10px">
                                 <label>Password </label>
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBox6" CssClass="ValidationError" ForeColor="red" ToolTip="Password is a REQUIRED field"></asp:RequiredFieldValidator>
                            </div>
                           </div>

                        <div class="col-md-6">
                            <div class="form-group" style="margin:10px">
                                 <label>Confirm Password </label>
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Re-type Password" TextMode="Password"></asp:TextBox>
                          
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox7" CssClass="ValidationError" ControlToCompare="TextBox6" ErrorMessage="No match" ToolTip="Password must be same"></asp:CompareValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="&laquo; (Required)" ControlToValidate="TextBox7" CssClass="ValidationError" ForeColor="red" ToolTip="Re-type pass is a required field"></asp:RequiredFieldValidator>
                                
                                
                            </div>
                           </div>
                   </div>


                  
                             <div class="form-group" >
                              <center>
                              <asp:Button class="btn btn-success btn-lg" runat="server" ID="Button1" Text="Sign Up" style="width:400px; margin:5px 0px 5px 0px" OnClick="Button1_Click"/>
                            </center>
                         </div>

                    <div class="row">
                     <div class="col">
                        <center> <br />
                           <h5>Already Signed Up?</h5>
                        </center>
                     </div>
                  </div>
                  <div class="form-group" >
                                <center>
                            <a href = "userlogin.aspx">
                                <input class="btn btn-info btn-lg" id="Button2" type="button" value="Login" style="width:400px;  margin:5px 0px 5px 0px" />
                                 </a>
                                </center>
                                
                         </div>
              
       
      </div>
     </div>
             <a href="homepage.aspx"><b><< Back to Home</b></a><br><br>
    </div>
  </div>
 </div>
</asp:Content>
