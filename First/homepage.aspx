<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="First.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/home.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <%-- <div class = "home-back">
        <div style="padding-left:100px">
             <p style="color:white; font-size:120%;  padding-top: 300px; padding-bottom:100px; font-family:monospace" >
             Welcome to <span style="color:yellow; font-size:150%"> Chotha... </span> <br />
             Read <span style="color:yellow"> Chotha </span> , Get 4! 
            </p>
      </div>--%>

  <section>
      <img src="img/back.png" class="img-fluid"/>

  </section>

        <section id="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <center>
                            <h1 style="border-bottom:6px solid blue; margin-left:35%; margin-right:35%; padding-bottom:20px"> We enrich you with -</h1>
                            
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <center class="test">
                          <img src="img/pdf.png"/>
                          <h5 > PDF's of class lecture</h5> 
                           
                        </center>
                    </div>

                     <div class="col-md-4">
                        <center class="test" >
                          <img src="img/solve.png"  width="350" height="360"/>
                          <h5 > Question Solve</h5> 
                           
                        </center>
                    </div>

                     <div class="col-md-4">
                        <center class="test">
                          <img src="img/ref-book.png" width="350" height="360" />
                          <h5 > Reference books</h5> 
                            
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <center>
                         <p style="font-size:20px""> Lecture notes of attentives makes clear idea about what to study</p>
                   </center>
                        </div>
                    <div class="col-md-4">
                        <center>
                       <p style="font-size:20px"> Solution notes of high CG's accelarates your preparation.
                              
                            </p></center>
                    </div>
                    <div class="col-md-4">
                        <center>
                        <p style="font-size:20px">  Don't mess aroun! Get reference books donwloaded all in one place.</p>
                  </center>
                        </div>


                </div>

            </div>

        </section>
   

        <section id="terms">
            <hr />
                        <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <center>
                            <h1 style="border-bottom:6px solid blue; margin-left:35%; margin-right:35%; padding-bottom:20px"> We enrich you with -</h1>
                            
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <center class="test">
                          <img src="img/pdf.png"/>
                          <h5 > PDF's of class lecture</h5> 
                           
                        </center>
                    </div>

                     <div class="col-md-4">
                        <center class="test" >
                          <img src="img/solve.png"  width="350" height="360"/>
                          <h5 > Question Solve</h5> 
                           
                        </center>
                    </div>

                     <div class="col-md-4">
                        <center class="test">
                          <img src="img/ref-book.png" width="350" height="360" />
                          <h5 > Reference books</h5> 
                            
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <center>
                         <p style="font-size:20px""> Lecture notes of attentives makes clear idea about what to study</p>
                   </center>
                        </div>
                    <div class="col-md-4">
                        <center>
                       <p style="font-size:20px"> Solution notes of high CG's accelarates your preparation.
                              
                            </p></center>
                    </div>
                    <div class="col-md-4">
                        <center>
                        <p style="font-size:20px">  Don't mess aroun! Get reference books donwloaded all in one place.</p>
                  </center>
                        </div>


                </div>

            </div>
     

        </section>


</asp:Content>
