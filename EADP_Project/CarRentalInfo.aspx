<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg.Master" AutoEventWireup="true" CodeBehind="CarRentalInfo.aspx.cs" Inherits="EADP_Project.CarRentalInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-wrap js-fullheight" style="background-image: url('images/e2bedb63dfa13ca56b223841e1c73257.jpg'); max-height: 85px;">
    </div>
    <div class="container mt-3">

        <!--START Car Details card-->
        <div class="card w-75 mx-auto shadow-sm">
            <!--<div class="card-header"><h6>Car Details</h6></div>-->
            <div class="card-body">
                <div class="row pl-5">
                    <button type="button" class="btn btn-info h-75 mr-2" disabled>Medium</button>
                    <h3 class="card-title">Nissan</h3>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-3 col-lg-3">
                        <!--<h5 class="card-title">Car Details</h5>-->
                        <img src="images\601c172a-izmo-2017-ford-fiesta-se-sedan-ingot-silver.png" style="max-height:150px; max-width:150px;"class="rounded" alt="...">
                    </div>
                    <div class="col-sm-12 col-md-5 col-lg-5 mt-2">
                       <ul style="font-size:15px;">
                         <li>Automatic Transmission</li>
                         <li>Fits 4 people</li>
                         <li>Pickup: Changi Airport</li>
                         <li>Dropoff: Changi Airport</li>
                       </ul>
                    </div>
                    <div class="col-sm-12 col-md-4 col-lg-4 mt-3">
                        <div class="text-center mt-2">
                           <h5 class="mb-0"><strong>SGD $145.50</strong></h5>
                           <p>1 day(s)</p>
                        </div>
    
                       
                    </div>
                </div>
            </div>
        </div>
        <!--END Car Details card-->

        <!--START CAR Rental Information-->

        <div class="card w-75 mx-auto">

        </div>




        <!--END Car Rental Information-->

    </div>

</asp:Content>
