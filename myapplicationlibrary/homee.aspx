<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="myapplicationlibrary.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    video 
    {
        width:100%;
        height:auto; 
    }
    div.polaroid 
    {
      width: 80%;
      background-color: white;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    img1 
    {   width: 100%

    }

    div.container1 {
      text-align: center;
      padding: 10px 20px;
    }
</style>
   <section>
       <video src="videos/background-video.mp4" autoplay="autoplay" loop="loop" />
   </section>

   <section> 
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Features</h2>
                  <p><b>Our 3 Primary Features -</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <div class="polaroid"><img width="150" src="imgs/digital-inventory.png"/>
                  <div class="container1"><h4>Digital Book Inventory</h4></div></div>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <div class="polaroid"><img width="150" src="imgs/search-online.png"/>
                  <div class="container1"><h4>Search Books</h4></div></div>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <div class="polaroid"><img width="150" src="imgs/defaulters-list.png"/>
                  <div class="container1"><h4>Defaulter List</h4></div></div>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
         </div>
      </div>
   </section>
   <section>
      <img src="imgs/in-homepage-banner.jpg" class="img-fluid"/>
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Process</h2>
                  <p><b>We have a Simple 3 Step Process</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <div class="polaroid"><img width="150" src="imgs/sign-up.png" />
                  <div class="container1"><h4>Sign Up</h4></div></div>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <div class="polaroid"><img width="150" src="imgs/search-online.png"/>
                  <div class="container1"><h4>Search Books</h4></div></div>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <div class="polaroid"><img width="150" src="imgs/library.png"/>
                  <div class="container1"><h4>Visit Us</h4></div></div>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
         </div>
      </div>
   </section>
</asp:Content>
