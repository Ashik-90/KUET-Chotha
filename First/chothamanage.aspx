<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="chothamanage.aspx.cs" Inherits="First.chothamanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
      <div class="row">
         <div class="col-md-4">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Manage Chotha</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150" src="img/chothamanage.png" />
                        </center>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col">
                        <center>
                            <asp:Label ID="Label1" runat="server" Text="Successful add/update/delete"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-5">
                        <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                      <div class="col-md-7">
                       <div class="form-group" style="margin:10px">
                       <div class="input-group">
                        <label style="margin-right:10px">Course Title </label>
                        
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="CSE" Value="CSE" />
                              <asp:ListItem Text="EEE" Value="EEE" />
                              <asp:ListItem Text="MATH" Value="MATH" />
                              <asp:ListItem Text="HUM" Value="HUM" />
                              <asp:ListItem Text="ME" Value="ME" />
                              <asp:ListItem Text="ARCH" Value="ARCH" />
                           </asp:DropDownList>
                        
                        </div>
                           </div>
                     </div>

                  </div>
                  <div class="row">
                     <div class="col-md-5">
                        <label>Chotha ID</label>
                        <div class="form-group" style="margin:10px">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Chotha ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-7">
                        <label>Title</label>
                        <div class="form-group" style="margin:10px">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Chotha Title"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     

                      <div class="col-md-12">
                        <label>Description</label>
                        <div class="form-group" style="margin:10px">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Say something about the content" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                    
                  </div>
                  
                  <div class="row">
                     
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>

         <div class="col-md-8">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Pending for Approval</h4>
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
