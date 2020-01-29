<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fooddetail.aspx.cs" Inherits="EADP_Project.fooddetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 40px;
        }
        .auto-style3 {
            height: 25px;
        }
        #carouselcontainer{
            width:600px;
        }
        .auto-style4 {
            width: 600px;
            height: 79px;
        }
        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style6 {
            height: 40px;
            width: 550px;
        }
        .auto-style7 {
            height: 100px;
            width: 650px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 650px;
        }
        .auto-style11 {
            width: 600px;
        }
    </style>
</head>
<body style="">
    <link href="css/fooddetail.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">

    <!--
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    -->



    <!--font awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css" integrity="sha384-REHJTs1r2ErKBuJB0fCK99gCYsVjwxHrSU0N7I1zl9vZbggVJXRMsv/sLlOAGb4M" crossorigin="anonymous">

 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <div id="Containerdetail" style="width:70%;margin:auto;">
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6">
                        <br />
                        <asp:Label ID="lblname" runat="server" Text="Storename" Font-Size="XX-Large"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="409px"></asp:TextBox>
                        <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" />
                        <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><div id="carosell-container">
<div id="carouselcontainer">
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="auto-style9" height="350px" src="<%#image%>"" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <h5>asdsad</h5>
        <p>asdad</p>
      </div>
    </div>
    <div class="carousel-item ">
      <img class="" width="100%" height="400px" src="images/food.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <h5>test</h5>
        <p>test</p>
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
</div></td>
                    
                    <td class="auto-style3">
    <input type="text" style="display: none;" id="lat" name="lat" value="<%#lat1%>"></input>
    <input type="text" style="display: none;" id="long" name="long" value="<%#long1%>"></input>
  <div id="map"></div>
    <script>
        // Initialize and add the map
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: {lat: Number(document.getElementById('lat').value), lng: Number(document.getElementById('long').value) },
        zoom: 16,
            mapTypeId: 'roadmap',
                zoomControl: false
        });
        var marker = new google.maps.Marker({
            position: { lat: Number(document.getElementById('lat').value), lng: Number(document.getElementById('long').value) },
        map: map,
            title: 'Hello World!'
      });
      }
    </script>
    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDM3chrvGy6UQR3oZMm0w09umw96SULa-Q&callback=initMap">
      </script>
  </td>
                </tr>
                <tr>
                    <td rowspan="3" class="auto-style10">

                        <br />

                        <asp:Label ID="Label12" runat="server" Text="Deal"></asp:Label>
                        <br />

                        <textarea name="deal" id="Textarea1" value="<%#deals%>" runat="server" class="auto-style4" draggable="false" readonly="readonly"></textarea>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                        <br />
                        <textarea name="content" id="content" value="<%#description%>" rows="10" runat="server" class="auto-style11" cols="20"></textarea>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Opening hour"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Weekday"></asp:Label>
                        &nbsp;
                        <input type="time" style="border: none;background-color: transparent; padding-top:2%;"value='<%#time1%>'readonly></input>to&nbsp;  &nbsp;
                        <input type="time" style="border: none;background-color: transparent; padding-top:2%;"value='<%#time2%>'readonly></input>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Weekend"></asp:Label>
                    &nbsp;
                        <input type="time" style="border: none;background-color: transparent; padding-top:2%; margin-right:0%;"value='<%#time3%>'readonly></input>to&nbsp;&nbsp;
                        <input type="time" style="border: none;background-color: transparent; padding-top:2%;"value='<%#time4%>'readonly></input>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Price Range"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="Weekday"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lblpricewkd1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;-&nbsp;&nbsp;
                        <asp:Label ID="lblpricewkd2" runat="server" Text="lblopwkd1"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="Weekend"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lblpricewke1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;-&nbsp;&nbsp;
                        <asp:Label ID="lblpricewke2" runat="server" Text="lblopwkd1"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Contact"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Email"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="Telephone"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lbltelephone" runat="server" Text="Label"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
