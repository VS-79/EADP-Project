<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg.Master" AutoEventWireup="true" CodeBehind="Food.aspx.cs" Inherits="EADP_Project.Food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="/css/soccer.css">
    <link href="css/foodlist.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/detail.css">
    <link rel="stylesheet" href="/css/style2.css">
    <div class="hero-wrap js-fullheight" style="background-image: url('images/e2bedb63dfa13ca56b223841e1c73257.jpg'); max-height: 105px;">
    </div>
    <div id="main-container">
    <div id="carosell-container">
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="" width="100%" height="300px" src="images/hori1.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="caption">
        <h5>Famous Singapore Food, And Where To Find Them</h5>
        <p>Are you having trouble finding food?</p>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <img class="" width="100%" height="300px" src="images/hori2.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="caption">
        <h5>Trust and rate our reviews</h5>1
        <p>Enjoyed the food? Rate the store and earn some points.</p>
            </div>
      </div>
    </div>
      <div class="carousel-item">
      <img class="" width="100%" height="300px" src="images/hori3.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
          <div class="caption">
        <h5>Points and rewards</h5>
        <p>Points can redeem rewards such as voucher,promocode and coupons.</p>
              </div>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>


  <div id="filter-container">
      <div class="">
         <input class="search" type="text" placeholder="Search">
        </div>
  </div>


  <div class="album py-5 bg-white">
    <div class="container">
      <div class="row">
          <%#str %>
      </div>
    </div>
    </div>
        </div>
</asp:Content>
