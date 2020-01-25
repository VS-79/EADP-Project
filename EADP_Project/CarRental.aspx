<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg.Master" AutoEventWireup="true" CodeBehind="CarRental.aspx.cs" Inherits="EADP_Project.CarRental" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
  .breadcrumb-item + .breadcrumb-item::before {
        content: ">";
   }
     .auto-style1 {
         position: relative;
         width: 100%;
         min-height: 1px;
         -webkit-box-flex: 0;
         -ms-flex: 0 0 100%;
         flex: 0 0 100%;
         max-width: 100%;
         left: 0px;
         top: 0px;
         padding-left: 15px;
         padding-right: 15px;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="hero-wrap js-fullheight" style="background-image: url('images/e2bedb63dfa13ca56b223841e1c73257.jpg');">
          <div class="overlay"></div>
          <div class="container">
              <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">

                  <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                      <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Check Out<br></strong>the best car rent prices in SG.</h1>
                      
                      <!--FORM SEARCH CAR RENTAL-->         
                      <div class="card card-body mb-4">
                        <!--START OF DIV ROW-->
                        <div class="row">
                          <div class="container">
                            <div class="row mb-2">

                                <div class="col-6 col-lg-6">
                                  <div class="input-group input-group-lg mb-3 mb-lg-0">
                                     
                                    <asp:DropDownList ID="DdlPickupL" runat="server" CssClass="form-control" Font-Size="15px">
                                        <asp:ListItem>Pickup Location</asp:ListItem>
                                        <asp:ListItem>Any</asp:ListItem>
                                        <asp:ListItem>Changi Airport</asp:ListItem>
                                    </asp:DropDownList>
                                   </div>
                                </div>

                              <div class="col-6 col-lg-6">
                                <div class="input-group input-group-lg mb-3 mb-lg-0">
                                    <asp:DropDownList ID="DdlDropoffL" runat="server" CssClass="form-control" Font-Size="15px">
                                        <asp:ListItem>Dropoff Location</asp:ListItem>
                                        <asp:ListItem>Any</asp:ListItem>
                                        <asp:ListItem>Changi Airport</asp:ListItem>
                                    </asp:DropDownList>
                                  </div>
                              </div>

                            </div>
                            <!--DATETIME ROW START-->
                            <div class="row">
                                <div class="col-6 col-lg-3 mt-1">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="material-icons">today</i></div>
                                      </div>
                                      <input type="text" style="font-size:15px;" class="form-control" id="datepickerPickup" placeholder="Pickup Date">
                                      <asp:HiddenField runat="server" ID="hfPickupDate" ClientIDMode="Static"/>
                                    </div>
                                </div>


                                <div class="col-6 col-lg-3 mt-2">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="material-icons">schedule</i></div>
                                      </div>
                                      <input type="text" style="font-size:15px;" class="form-control" id="timepickerpickup" placeholder="Pickup Time">
                                      <asp:HiddenField runat="server" ID="hfTimePickup" ClientIDMode="Static"/>
                                    </div>
                                </div>

                                <div class="col-6 col-lg-3 mt-2">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="material-icons">today</i></div>
                                      </div>
                                      <input type="text" style="font-size:15px;" class="form-control" id="datepickerDropoff" placeholder="Dropoff Date">
                                      <asp:HiddenField runat="server" ID="hfDropoffDate" ClientIDMode="Static"/>
                                    </div>
                                </div>


                                <div class="col-6 col-lg-3 mt-2">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="material-icons">schedule</i></div>
                                      </div>
                                      <input type="text" style="font-size:15px;" class="form-control" id="timepickerdropoff" placeholder="Dropoff Time" disabled>
                                      <asp:HiddenField runat="server" ID="hfTimeDropoff" ClientIDMode="Static"/>
                                    </div>
                                </div>

                            </div>
                            <!--DATETIME ROW END-->

                            <div class="row mt-2">
                              <!--code for button-->
                              <div class="col-12 col-lg-8">

                              </div>
                              <div class="col-12 col-lg-4 mt-2">
                                <!--<button class="btn btn-lg btn-primary btn-block mt-3 mt-md-0 animate-up-2" type="submit">Search</button>-->
                                 <asp:Button ID="BtnGetCar" runat="server" CssClass="btn btn-lg btn-primary btn-block mt-3 mt-md-0 animate-up-2" Text="Search" OnClick="BtnGetCustomer_Click" />
                              </div>
                            </div>

                            
                            <!--PANEL ERROR MESSAGES 1-->
                            <div class="row">
                              <div class="col-12 col-md-10 col-lg-8 mt-3">
                                <asp:Panel ID="PanelErrorResult" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger">
                                        <button type="button" class="close" data-dismiss="alert">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                        <asp:Label ID="Lbl_err1" runat="server"></asp:Label>
                               </asp:Panel>
                              </div>
                            </div>
                            <!--END PANEL ERROR MESSAGES 1-->

                           <!--PANEL ERROR MESSAGES 2-->
                           <div class="row">
                               <div class="col-12 col-md-10 col-lg-8 mt-2">
                               <asp:Panel ID="PanelErrorResult2" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger mt-2">
                                        <button type="button" class="close" data-dismiss="alert">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                        <asp:Label ID="Lbl_err2" runat="server"></asp:Label>
                               </asp:Panel>
                                </div>
                           </div>
                            <!--END PANEL ERROR MESSAGES 2-->
                          
                          <!--END CARD DIV CONTAINER-->
                          </div>

                        </div>
                        <!--END CARD DIV ROW-->
                      </div>
                      <!--END FORM SEARCH CAR RENTAL-->



                      <p class="ml-1 row browse d-inline-flex">
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="flaticon-fork"></i>Restaurant</a></span>
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="flaticon-hotel"></i>Hotel</a></span>
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="flaticon-meeting-point"></i>Places</a></span>
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="flaticon-shopping-bag"></i>Events</a></span>
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="fas fa-car-side"></i>Car Rental</a></span>
                      </p>
                  </div>
              </div>

            <!--START RESULT BODY ERROR-->
            <div runat="server" id="resultbodyError" visible="false"> 
                

            <!--END RESULT BODY ERROR-->
            </div>
            
           
             <!--START RESULT BODY-->
            <div runat="server"  id="resultBody" visible="false">
                   <div class="row justify-content-start mb-3 pb-3">
                      <div class="col-md-7 heading-section ftco-animate">
                          <h4 id="h4tt" runat="server" class="mb-1 mt-4"><strong>Results:</strong><span runat="server" id="resultsNum">5</span>Found</h4>
                      </div>
                  </div>

                               
              <div class="row">
                  <div class="col-12 col-lg-3">
                      <div class="card">
                          <div class="card-header">
                            <a data-toggle="collapse" href="#collapse-example" aria-expanded="true" aria-controls="collapse-example" id="heading-example" class="d-block">
                                Filters
                                <i class="fa fa-chevron-down pull-right float-right mt-1"></i>
                            </a>

                          </div>

                        <div id="collapse-example" class="collapse show" aria-labelledby="heading-example">
                                 <div class="card-body">
                                      <h6 class="card-title">Car Type</h6>
                                      <div class="checkbox">
                                          <!--<label><input type="checkbox" value="">Small Cars</label>-->
                                          <asp:CheckBox ID="CheckBoxSmallCar" runat="server" Text="Small Cars"/>
                                      </div>
                                      <div class="checkbox">
                                          <!--<label><input type="checkbox" value="">Medium Cars</label>-->
                                          <asp:CheckBox ID="CheckBoxMediumCar" runat="server" Text="Medium Cars" />
                                      </div>
                                      <div class="checkbox">
                                          <!--<label><input type="checkbox" value="">SUV</label>-->
                                          <asp:CheckBox ID="CheckBoxSUV" runat="server" Text="SUV" />
                                      </div>
                                      <div class="checkbox">
                                          <!--<label><input type="checkbox" value="">Luxury</label>-->
                                          <asp:CheckBox ID="CheckBoxLuxury" runat="server" Text="Luxury"/>
                                      </div>
                                     <!--
                                      <div class="checkbox">
                                          <label><input type="checkbox" value="">Bike</label>
                                      </div>
                                     -->
                                      <br/>


                                    <h6 class="card-title">Price</h6>
                                    <div class="checkbox">
                                        <!--<label><input type="checkbox" value="">Below 50</label>-->
                                        <asp:CheckBox ID="CheckBoxPBelow50" runat="server" Text="Below 50"/>
                                    </div>
                                    <div class="checkbox">
                                        <!--<label><input type="checkbox" value="">50-100</label>-->
                                        <asp:CheckBox ID="CheckBoxP50_100" runat="server" Text="50-100"/>
                                    </div>
                                    <div class="checkbox">
                                        <!--<label><input type="checkbox" value="">100-150</label>-->
                                        <asp:CheckBox ID="CheckBoxP100_150" runat="server" Text="100-150"/>
                                    </div>
                                    <div class="checkbox">
                                        <!--<label><input type="checkbox" value="">150-200</label>-->
                                        <asp:CheckBox ID="CheckBoxP150_200" runat="server" Text="150-200"/>
                                    </div>
                                    <br/>


                                    <h6 class="card-title">Capacity</h6>
                                    <div class="checkbox">
                                        <!--<label><input type="checkbox" value="">Below 4</label>-->
                                        <asp:CheckBox ID="CheckBoxCBelow4" runat="server" Text="Below 4"/>
                                    </div>
                                    <div class="checkbox">
                                        <!--<label><input type="checkbox" value="">4 to 6</label>-->
                                        <asp:CheckBox ID="CheckBoxC4_6" runat="server" Text="4 to 6"/>
                                    </div>
                                    <div class="checkbox">
                                        <!--<label><input type="checkbox" value="">Above 6</label>-->
                                        <asp:CheckBox ID="CheckBoxCAbove6" runat="server" Text="Above 6"/>
                                    </div>
                                </div>

                      </div>

                      </div>
                  </div>
                  <!--START car card-->
                  <div class="col-12 col-lg-9 mt-2">
                      <!--START BREADCRUMB-->
                      <ol class="breadcrumb">
                        <li class="breadcrumb-item">Rental Car Results</li>
                        <!--<li class="breadcrumb-item active">Rental Car Details</li>-->
                        <!--<li class="breadcrumb-item">Payment</li>-->
                      </ol>
                      <!--END BREADCRUMB-->
                      <div class="card card-body shadow-sm">
                           <div class="row">
                             <div class="col-sm-12 col-md-3 col-lg-3">
                               <div class="text-center">
                                 <img src="images\601c172a-izmo-2017-ford-fiesta-se-sedan-ingot-silver.png" style="max-height:150px; max-width:150px;"class="rounded" alt="...">
                               </div>
                             </div>
                             <div class="col-sm-12 col-md-6 col-lg-6 mt-1">
                               <h3>Nissan</h3>
                               <div class="d-flex flex-row">
                                 <div class="bd-highlight mr-1" data-toggle="tooltip" data-placement="left" title="Car Type"><i class="fas fa-car fa-lg"></i></div>
                                 <p class="">Medium car</p>

                                 <div class="bd-highlight ml-3 mr-1" data-toggle="tooltip" data-placement="left" title="Transmission"><i class="fas fa-cog"></i></div>
                                 <p>Automatic</p>

                                 <div class="bd-highlight ml-3 mr-1" data-toggle="tooltip" data-placement="left" title="No of people"><i class="fas fa-user-alt"></i></div>
                                 <p>4</p>


                               </div>

                              <div class="d-flex flex-row">
                                  <div class="bd-highlight mr-1"><i class="fas fa-map-marker-alt mr-2"></i>Pickup:</div>
                                  <p> Changi airport</p>
                              </div>

                              <div class="d-flex flex-row">
                                  <div class="bd-highlight mr-1"><i class="fas fa-map-marker-alt mr-2"></i>Dropoff:</div>
                                  <p class="mr-3"> Changi airport</p>
                              </div>


                             </div>
                             <div class="col-sm-12 col-md-3 col-lg-3">
                               <h4 class="mt-4 text-center"><strong>$145.50<h6>w/GST</h6></strong></h4>
                               <button class="btn btn-warning w-100 mt-4"type="button" name="button">Reserve</button>
                             </div>
                           </div>
                         </div>



                  </div>
                  <!--END of BREADCRUMB & CAR CARD-->
                  
              </div>
              <!-- end of filter and results row-->

             
              <!--END OF REUSULT BODY-->
              </div>




              <div class="row">
                <div class="auto-style1">
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                </div>
              </div>
          </div>
      </div>


</asp:Content>
