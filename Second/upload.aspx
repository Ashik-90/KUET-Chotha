<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="Second.upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
       <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Upload Your Chotha</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150" src="img/upload.png" />
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
                     <div class="col-md-7">
                        <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                      <div class="col-md-5">
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
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Chotha ID" TextMode="Search"></asp:TextBox>
                              
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
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Say something about the content" TextMode="MultiLine" Rows="3"></asp:TextBox>
                        </div>
                     </div>
                    
                  </div>
                  
                  <div class="row">
                     
                  </div>
                  <div class="row">
                    
                     <div class="col-6 mx-auto">
                          <center>
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Upload" OnClick="Button3_Click" />
                     </center>
                     </div>
                         
                     
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            
            <br>
         </div>
          
        </div>
</asp:Content>
