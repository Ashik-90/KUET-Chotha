<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="find.aspx.cs" Inherits="Second.find" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="col-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Take what you need</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KUETChothaConnectionString %>" 
                            SelectCommand="SELECT [c_id], [c_title], [heading], [dscpt], [addr] FROM [approved]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="c_id" HeaderText="Chotha ID" ReadOnly="True" SortExpression="c_id" />
                               
                                <asp:BoundField DataField="c_title" HeaderText="Course" SortExpression="c_title" />
                                <asp:BoundField DataField="heading" HeaderText="Title" SortExpression="heading" />
                                <asp:BoundField DataField="dscpt" HeaderText="Description" SortExpression="dscpt" />
                                <asp:BoundField DataField="addr" HeaderText="Path" SortExpression="addr" Visible="false" />

                                <asp:TemplateField HeaderText="Download">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Download" OnClick="LinkButton1_Click"></asp:LinkButton>
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                         </asp:GridView>

                     </div>
                  
               </div>
            </div>
         </div>
        </div>
</asp:Content>
