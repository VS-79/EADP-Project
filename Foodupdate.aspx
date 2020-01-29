<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Foodupdate.aspx.cs" Inherits="EADP_Project.Foodupdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link href="css/style.css" rel="stylesheet" />
    <link href="css/foodadd.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 18px;
        }
        .auto-style4 {
            width: 168px;
        }
        #map {
  height: 300px;
  width: 80%; }
  @media (max-width: 200px) {
    #map {
      height: 300px; } }
        .auto-style5 {
            width: 95%;
            height: 131px;
        }
        .auto-style7 {
            width: 95%;
        }
        .auto-style8 {
            height: 18px;
            width: 373px;
        }
        .auto-style9 {
            width: 373px;
        }
        .auto-style10 {
            width: 168px;
            height: 172px;
        }
        .auto-style11 {
            height: 172px;
        }
        .auto-style12 {
            width: 475px;
        }
    </style>
</head>
<body>
    <div id="content1" style="width:80%;margin:auto;">
        <h2 id="contenttitle">
            1111<center>Update your post</center>
      </h2>
    <form id="form1" runat="server">
        <div>
            <table class="w-100">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Store Name"></asp:Label>
                    </td>
                    <td rowspan="4">
                        &nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="253px" Width="396px" />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Image ID="Image2" runat="server" Height="33px" Width="36px" />
                        <asp:Image ID="Image3" runat="server" Height="33px" Width="36px" />
                        <asp:Image ID="Image4" runat="server" Height="33px" Width="36px" />
                        <asp:Image ID="Image5" runat="server" Height="33px" Width="36px" />
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="243px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBoxname" runat="server" Width="475px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Store Description"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">
                        <textarea name="content" id="content" rows="10" runat="server" class="auto-style12"><%#pdescription%></textarea>&nbsp;<asp:Label ID="Label12" runat="server" Text="Culinary Types"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDowntype" runat="server">
                            <asp:ListItem>Thai</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Korean</asp:ListItem>
                            <asp:ListItem>Malay</asp:ListItem>
                            <asp:ListItem>Indian</asp:ListItem>
                            <asp:ListItem>Chinese</asp:ListItem>
                            <asp:ListItem>Indo</asp:ListItem>
                            <asp:ListItem>Western</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label13" runat="server" Text="Deals"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtdeals" runat="server" Width="252px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <table class="auto-style5">
                            <tr>
                                <td class="auto-style2" style="border-style: double; border-width: thin">
                                    <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-style: double; border-width: thin">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:TextBox ID="TextBoxemail" runat="server" Width="229px"></asp:TextBox>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Label ID="Label5" runat="server" Text="Telephone"></asp:Label>
                                &nbsp; &nbsp;<asp:TextBox ID="TextBoxphone" runat="server" Width="229px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td rowspan="2"> 
                        <div class="col-md">
               
               <input style="display: none;" type="text"  id="lat1" name="city" value="<%#plat1%>"></input>
               <input style="display: none;" type="text"  id="long1" name="city" value="<%#plong1%>"></input>
               <input style="display: none;" type="text"  id="city" name="city" value=""></input>
               <input id="pac-input" style="width:150px;" class="controls" type="text" placeholder="Search" onclick="weatherforecastapi()"/>
                            <asp:TextBox type="text" id="lat2" name="lat2" value="<%#plat1%>" runat="server" BorderColor="White" BorderStyle="None" ForeColor="White"></asp:TextBox>
               <asp:TextBox  type="text" id="long2" name="long2" value="<%#plong1%>" runat="server" BorderColor="White" BorderStyle="None" ForeColor="White"></asp:TextBox>
                            <div id="map"></div>
               <script>
                   // This example adds a search box to a map, using the Google Place Autocomplete
                   // feature. People can enter geographical searches. The search box will return a
                   // pick list containing a mix of places and predicted search terms.

                   // This example requires the Places library. Include the libraries=places
                   // parameter when you first load the API. For example:
                   // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
                   var zoomin = 16;

                   function initAutocomplete() {
                       var map = new google.maps.Map(document.getElementById('map'), {
                           center: { lat: Number(document.getElementById('lat1').value), lng: Number(document.getElementById('long1').value) },
                           zoom: zoomin,
                           mapTypeId: 'roadmap',
                           gestureHandling: 'none',
                           zoomControl: false
                       });

                       // Create the search box and link it to the UI element.
                       var input = document.getElementById('pac-input');
                       var searchBox = new google.maps.places.SearchBox(input);
                       var geocoder = new google.maps.Geocoder;
                       map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

                       function geocodeLatLng(geocoder, lat, long) {
                           var latlng = { lat: parseFloat(lat), lng: parseFloat(long) };
                           geocoder.geocode({ 'location': latlng }, function (results, status) {
                               if (status === 'OK') {
                                   document.getElementById("city").value = results[3].formatted_address;
                               }
                           })
                       }
                       // Bias the SearchBox results towards current map's viewport.
                       map.addListener('bounds_changed', function () {
                           searchBox.setBounds(map.getBounds());
                           var bound = map.getBounds();
                           var lat = bound.getCenter();
                           var latstring = lat.toString();
                           var index = latstring.indexOf(",");
                           console.log(latstring.slice(1, index - 1));
                           console.log(latstring.slice(index + 2, latstring.length - 1));
                           geocodeLatLng(geocoder, latstring.slice(1, index - 1), latstring.slice(index + 2, latstring.length - 1))
                           document.getElementById('lat2').value = latstring.slice(1, index - 1);
                           document.getElementById('long2').value = latstring.slice(index + 2, latstring.length - 1);
                       });

                       var markers = [];
                       // Listen for the event fired when the user selects a prediction and retrieve
                       // more details for that place.
                       searchBox.addListener('places_changed', function () {
                           var places = searchBox.getPlaces();
                           if (places.length == 0) {
                               return;
                           }

                           // Clear out the old markers.
                           markers.forEach(function (marker) {
                               marker.setMap(null);
                           });
                           markers = [];

                           // For each place, get the icon, name and location.
                           var bounds = new google.maps.LatLngBounds();
                           places.forEach(function (place) {
                               if (!place.geometry) {
                                   console.log("Returned place contains no geometry");
                                   return;
                               }
                               var icon = {
                                   url: place.icon,
                                   size: new google.maps.Size(71, 71),
                                   origin: new google.maps.Point(0, 0),
                                   anchor: new google.maps.Point(17, 34),
                                   scaledSize: new google.maps.Size(25, 25)
                               };
                               // Create a marker for each place.  
                               markers.push(new google.maps.Marker({
                                   map: map,
                                   title: place.name,
                                   position: place.geometry.location
                               }));

                               if (place.geometry.viewport) {
                                   // Only geocodes have viewport.
                                   bounds.union(place.geometry.viewport);
                               } else {
                                   bounds.extend(place.geometry.location);
                               }
                           });
                           map.fitBounds(bounds);
                       });
                   }

               </script>
               <script
                  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDM3chrvGy6UQR3oZMm0w09umw96SULa-Q&libraries=places&callback=initAutocomplete"
                  async defer></script>
            </div>
         </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style8" style="border-style: double; border-width: thin">
                                    <asp:Label ID="Label6" runat="server" Text="Opening hour"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-style: double; border-width: thin" class="auto-style9">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text="Weekday"></asp:Label>
                                   
                                    &nbsp;&nbsp;&nbsp;
                                   
                                    <input  id="time1" name="time1" class="time" type="time" value="<%#popwkd1%>" /> to <input  id="time2" name="time2" class="time" type="time" value="<%#popwkd2%>" /><br />
                                    <br />
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server" Text="Weekend"></asp:Label>
                                    &nbsp; &nbsp;
                                    <input  id="time3" name="time3" class="time" type="time" value="<%#popwke1%>" /> to <input  id="time4" name="time4" class="time" type="time" value="<%#popwke2%>" /><br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style2" style="border-style: double; border-width: thin">
                                    <asp:Label ID="Label9" runat="server" Text="Price Range"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-style: double; border-width: thin">
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" Text="Weekday"></asp:Label>
                                    &nbsp;&nbsp;&nbsp; $<input class="price" id="weekdayp1" name="weekdayp1" placeholder="0" value="<%#ppricewkd1%>" type="number" min='1' max='100' /> to 
                                    $<input class="price" id="weekdayp2" name="weekdayp2" placeholder="0" value="<%#ppricewkd2%>" type="number" min='1' max='100' /><br /> 
                                    <br />
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label11" runat="server" Text="Weekend"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    $<input class="price" id="weekendp1" name="weekendp1" placeholder="1" value="<%#ppricewke1%>" type="number" min='1' max='100' /> to $<input class="price" id="weekendp2" name="weekendp2" placeholder="1" value="<%#ppricewke2%>" type="number" min='1' max='100' />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnconfirm" runat="server" OnClick="btnconfirm_Click" Text="Submit" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Cancel" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
        </div>
</body>
</html>
