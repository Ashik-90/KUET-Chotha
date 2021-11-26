<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="accmanage.aspx.cs" Inherits="First.accmanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="200" src="img/accmanage.png" />
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
                        <label>Roll No</label>
                        <div class="form-group" style="margin:10px">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Roll No." TextMode="Number"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-search"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>

                     <div class="col-md-6">
                        <label>Full Name</label>
                       <div class="form-group" style="margin:10px">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                 
                  </div>

                  <div class="row">
                
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group" style="margin:10px">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                       <div class="form-group" style="margin:10px">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row" style="margin-top:20px">
                     <div class="col-md-4 mx-auto">
                         <center>
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User Permanently" />
                    </center>
                     </div>
                  </div>
               </div>
            </div>

             <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>This user's Uploaded Chotha</h4>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>

            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>

         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member List</h4>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
