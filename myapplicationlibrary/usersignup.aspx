<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="myapplicationlibrary.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.backy {
    width: 100%;
    height: auto;
    background-image: url('images/library.jpg' );
    background-size: cover;
/*    border: 1px solid none;*/
}
</style>

<div class="backy">
    <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150" src="images/user profile.png"/>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>
                           <h3> user signup </h3>
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
                        <label>Full name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-6">
                        <label>Date of birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of birth" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>

                  </div>

                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Phone"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-6">
                        <label>Email-ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email-ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>

                  </div>

                  <div class="row">
                     <div class="col-md-4">
                        <label>State/Province</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="State/Province"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>                         
                     </div>

                     <div class="col-md-4">
                        <label>Postal Code</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Postal Code"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Full address" TextMode="MultiLine"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-6">
                        <label>Create a Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-6">
                        <label>Select password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                      <div class="col">
                          <div class="form-group">

                              <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringeLibrary %>" SelectCommand="SELECT * FROM [member_master_table]"></asp:SqlDataSource>--%>

                              <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Create An Account" OnClick="Button1_Click" />
                          </div>
                      </div>
                  </div>

                  </div>



               </div><a class="btn btn-primary" href="home.aspx" role="button"><< Back to Home</a><br><br>
             </div>
</div>

         

</asp:Content>
