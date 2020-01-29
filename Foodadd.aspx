<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/test.Master" CodeBehind="Foodadd.aspx.cs" Inherits="EADP_Project.Foodadd" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    </div>
           <link href="css/style.css" rel="stylesheet" />
    <link href="css/foodadd.css" rel="stylesheet" />
     <style type="text/css">
        .auto-style4 {
            width: 168px;
        }
        #map {
  height: 300px;
  width: 80%; }
  @media (max-width: 200px) {
    #map {
      height: 300px; } }
        .auto-style10 {
            width: 168px;
            height: 172px;
        }
        .auto-style11 {
            height: 172px;
        }
        .auto-style13 {
            width: 168px;
            height: 109px;
        }
        .auto-style14 {
            height: 109px;
        }
         .auto-style15 {
             display: block;
             width: 99%;
             font-size: 18px;
             line-height: 1.5;
             color: #000000;
             background-clip: padding-box;
             border-radius: 0px;
             -webkit-transition: none;
             transition: none;
             -o-transition: none;
             height: 161px;
             -webkit-box-shadow: none !important;
             box-shadow: none !important;
             border: 1px solid #ced4da;
             background: #fff;
         }
         .auto-style17 {
             width: 516px;
         }
         .auto-style18 {
             width: 80%;
         }
         .auto-style19 {
             height: 18px;
             width: 629px;
         }
         .auto-style23 {
             position: relative;
             width: 100%;
             min-height: 1px;
             -ms-flex-preferred-size: 0;
             flex-basis: 0;
             -webkit-box-flex: 1;
             -ms-flex-positive: 1;
             flex-grow: 1;
             max-width: 100%;
             left: 0px;
             top: 0px;
             padding-left: 15px;
             padding-right: 15px;
         }
         .auto-style24 {
             width: 518px;
         }
         .auto-style25 {
             width: 629px;
             height: 95px;
         }
         .auto-style26 {
             height: 18px;
             width: 518px;
         }
         .auto-style27 {
             width: 629px;
             height: 170px;
         }
    </style>
    <div id="content1" style="margin:auto;" class="auto-style18">
        <h2 id="contenttitle">
         <center>Create your Post</center>
      </h2>
    <form id="form1" runat="server">
        <div>
            <table class="w-100">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style19" style="border-style: double; border-width: thin">
                        <asp:Label ID="Label1" runat="server" Text="Store Name"></asp:Label>&nbsp;:
                        <asp:TextBox ID="TextBoxname" class="text-line" runat="server" Width="352px" OnTextChanged="TextBoxname_TextChanged"></asp:TextBox>
                                    <br/><br />
                                </td>
                            </tr>
                            </table>
                    </td>
                    <td rowspan="2">
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style26" style="border-style: double; border-width: thin">
                                    <asp:Label ID="Label9" runat="server" Text="Price Range"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-style: double; border-width: thin" class="auto-style24">
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" Text="Weekday"></asp:Label>
                                    &nbsp;&nbsp;&nbsp; $<input class="price"     id="weekdayp1" name="weekdayp1" placeholder="0" value="" type="number" min='1' max='100' /> to 
                                    $<input class="price" id="weekdayp2" name="weekdayp2" placeholder="0" value="" type="number" min='1' max='100' /><br /> 
                                    <br />
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label11" runat="server" Text="Weekend"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    $<input class="price" id="weekendp1" name="weekendp1" placeholder="1" value="" type="number" min='1' max='100' /> to $<input class="price" id="weekendp2" name="weekendp2" placeholder="1" value="" type="number" min='1' max='100' />
                                </td>
                            </tr>
                        </table>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style17" style="border-style: double; border-width: thin">
                                    <asp:Label ID="Label6" runat="server" Text="Opening hour"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-style: double; border-width: thin" class="auto-style17">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text="Weekday"></asp:Label>
                                   
                                    &nbsp;&nbsp;&nbsp;
                                   
                                    <input  id="time1" name="time1" class="time" type="time" value="12:00" /> to <input  id="time2" name="time2" class="time" type="time" value="12:00" /><br />
                                    <br />
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server" Text="Weekend"></asp:Label>
                                    &nbsp; &nbsp;
                                    <input  id="time3" name="time3" class="time" type="time" value="12:00" /> to <input  id="time4" name="time4" class="time" type="time" value="12:00" /><br />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style19" style="border-style: double; border-width: thin">
                        <asp:Label ID="Label2" runat="server" Text="Store Description"></asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            </table>
                        <table class="auto-style16">
                            <tr>
                                <td style="border-style: double; border-width: thin" class="auto-style27">
                        <textarea name="content" id="content" runat="server" class="auto-style15" cols="20"></textarea></td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <table class="auto-style24">
                            <tr>
                                <td class="auto-style24" style="border-style: double; border-width: thin">
                                    <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-style: double; border-width: thin" class="auto-style24">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:TextBox ID="TextBoxemail" class="text-line" runat="server" Width="229px"></asp:TextBox>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Label ID="Label5" runat="server" Text="Telephone"></asp:Label>
                                &nbsp; &nbsp;<asp:TextBox ID="TextBoxphone" class="text-line" runat="server" Width="229px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        </td>
                    <td>
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style19" style="border-style: double; border-width: thin">
                                    <asp:Label ID="Label12" runat="server" Text="Culinary Types"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-style: double; border-width: thin" class="auto-style25">
                                    &nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDowntype" runat="server" Height="26px" Width="257px">
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
                                    &nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">
                        <table class="auto-style24">
                            <tr>
                                <td class="auto-style26" style="border-style: double; border-width: thin">
                                    Add Image</td>
                            </tr>
                            <tr>
                                <td style="border-style: double; border-width: thin" class="auto-style24">
                        <asp:Image ID="Image1" runat="server" Height="253px" Width="515px" />
                                    <br />
                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="243px" />
                                    <br />
                        <asp:Image ID="Image2" runat="server" Height="33px" Width="36px" />
                        <asp:Image ID="Image3" runat="server" Height="33px" Width="36px" />
                        <asp:Image ID="Image4" runat="server" Height="33px" Width="36px" />
                        <asp:Image ID="Image5" runat="server" Height="33px" Width="36px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                            <div class="auto-style23">
               
               <input style="display: none;" type="text"  id="lat1" name="city" value="1.3521"></input>
               <input style="display: none;" type="text"  id="long1" name="city" value="103.8198"></input>
               <input style="display: none;" type="text"  id="city" name="city" value=""></input>
               <input id="pac-input" style="width:150px;" class="controls" type="text" placeholder="Search" onclick="weatherforecastapi()"/><asp:TextBox type="text" id="lat2" name="lat2" value="1.3521" runat="server" BorderColor="White" BorderStyle="None" ForeColor="White"></asp:TextBox>
               <asp:TextBox  type="text" id="long2" name="long2" value="103.8198" runat="server" BorderColor="White" BorderStyle="None" ForeColor="White"></asp:TextBox>
                            <div id="map"></div>
               <script>
                   // This example adds a search box to a map, using the Google Place Autocomplete
                   // feature. People can enter geographical searches. The search box will return a
                   // pick list containing a mix of places and predicted search terms.

                   // This example requires the Places library. Include the libraries=places
                   // parameter when you first load the API. For example:
                   // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
                   var zoomin = 10;

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
            </div>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td rowspan="2"> 
                    
                        <asp:Button ID="btnconfirm" runat="server" OnClick="btnconfirm_Click" Text="Submit" />
                        <asp:Button ID="Button1" runat="server" Text="Cancel" />
                    
         </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
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
</asp:Content>
   
