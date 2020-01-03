<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg.Master" AutoEventWireup="true" CodeBehind="CarRental.aspx.cs" Inherits="EADP_Project.CarRental" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="hero-wrap js-fullheight" style="background-image: url('images/e2bedb63dfa13ca56b223841e1c73257.jpg');">
          <div class="overlay"></div>
          <div class="container">
              <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
                  <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                      <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Check Out<br></strong>the best car rent prices in SG.</h1>
                      <div class="card card-body mb-4">
                        <form autocomplete="off" class="row" method="get" action="html/pages/all-spaces.html">
                          <div class="container">
                            <div class="row mb-2">
                                <div class="col-6 col-lg-6">
                                  <div class="input-group input-group-lg mb-3 mb-lg-0">
                                      <input class="form-control" style="font-size:18px;" placeholder="Pickup Location" type="text" required="">
                                    </div>
                                </div>

                              <div class="col-6 col-lg-6">
                                <div class="input-group input-group-lg mb-3 mb-lg-0">
                                    <input class="form-control" style="font-size:18px;" placeholder="Dropoff Location" type="text" required="">
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
                                    </div>
                                </div>


                                <div class="col-6 col-lg-3 mt-2">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="material-icons">schedule</i></div>
                                      </div>
                                      <input type="text" style="font-size:15px;" class="form-control" id="inlineFormInputGroupUsername" placeholder="Pickup Time">
                                    </div>
                                </div>

                                <div class="col-6 col-lg-3 mt-2">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="material-icons">today</i></div>
                                      </div>
                                      <input type="text" style="font-size:15px;" class="form-control" id="datepickerDropoff" placeholder="Dropoff Date">
                                    </div>
                                </div>


                                <div class="col-6 col-lg-3 mt-2">
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="material-icons">schedule</i></div>
                                      </div>
                                      <input type="text" style="font-size:15px;" class="form-control" id="inlineFormInputGroupUsername" placeholder="Dropoff Time">
                                    </div>
                                </div>

                            </div>
                            <!--DATETIME ROW END-->

                            <div class="row mt-2">
                              <!--code for button-->
                              <div class="col-12 col-lg-8">

                              </div>
                              <div class="col-12 col-lg-4 mt-2">
                                <button class="btn btn-lg btn-primary btn-block mt-3 mt-md-0 animate-up-2" type="submit">Search</button>
                              </div>
                            </div>

                          </div>
                        </form>
                      </div>



                      <p class="ml-1 row browse d-inline-flex">
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="flaticon-fork"></i>Restaurant</a></span>
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="flaticon-hotel"></i>Hotel</a></span>
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="flaticon-meeting-point"></i>Places</a></span>
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="flaticon-shopping-bag"></i>Events</a></span>
                          <span class="d-flex justify-content-md-center align-items-md-center my-2" style="max-height:50px;"><a href="#"><i class="fas fa-car-side"></i>Car Rental</a></span>
                      </p>
                  </div>
              </div>


              <div class="row justify-content-start mb-3 pb-3">
                  <div class="col-md-7 heading-section ftco-animate">
                      <h4 class="mb-1 mt-4"><strong>Results:</strong> 5 Found</h4>
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
                                      <label><input type="checkbox" value="">Small Cars</label>
                                  </div>
                                  <div class="checkbox">
                                      <label><input type="checkbox" value="">Medium Cars</label>
                                  </div>
                                  <div class="checkbox">
                                      <label><input type="checkbox" value="">SUV</label>
                                  </div>
                                  <div class="checkbox">
                                      <label><input type="checkbox" value="">Luxury</label>
                                  </div>
                                  <div class="checkbox">
                                      <label><input type="checkbox" value="">Bike</label>
                                  </div>
                                  <br/>


                                <h6 class="card-title">Hourly Price</h6>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Below 50</label>
                                </div>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">50-100</label>
                                </div>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">100-150</label>
                                </div>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">150-200</label>
                                </div>
                                <br/>


                                <h6 class="card-title">Capacity</h6>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Below 4</label>
                                </div>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">4 to 6</label>
                                </div>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Above 6</label>
                                </div>
                           </div>
                      </div>

                      </div>
                  </div>
                  <!--START car card-->
                  <div class="col-12 col-lg-9 mt-2">
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
                            <div class="bd-highlight mr-1"><i class="fas fa-car fa-lg"></i></div>
                            <p class="mr-3">Medium car</p>

                            <div class="bd-highlight ml-3 mr-1" data-toggle="tooltip" data-placement="top" title="Tooltip on top"><i class="fas fa-cog"></i></div>
                            <p>Automatic</p>

                            <div class="bd-highlight ml-3 mr-1"><i class="fas fa-user-alt"></i></div>
                            <p>4</p>

                            <!-- <div class="bd-highlight ml-1">Flex item 3</div> -->
                          </div>
                          <!-- <p>Pickup Drop off</p> -->
                        </div>
                        <div class="col-sm-12 col-md-3 col-lg-3">
                          <h4 class="mt-2 text-center"><strong>$45<h6>/per hour</h6></strong></h4>
                          <!-- <h5 class="mt-2 float-right"><strong>$150<h6>/per day</h6></strong></h5> -->
                          <button class="btn btn-warning w-100 mt-4"type="button" name="button">Reserve</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--END of car card-->


              </div>
              <!-- end of filter and results row-->

              <div class="row">
                <div class="col-12">
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
