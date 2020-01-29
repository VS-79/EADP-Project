<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EADP_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <link rel="stylesheet" href="/css/style2.css">
<link rel="stylesheet" href="/css/match.css">
<link rel="stylesheet" href="/css/soccer.css">
    <link rel="stylesheet" href="css/style.css">
<script src="/js/autofill.js"></script>
               <input type="text" style="display: none;" id="lat" name="lat" value="1.3521"></input>
               <input type="text" style="display: none;" id="long" name="long" value="103.8198"></input>
               <input type="text" style="display: none;" id="city" name="city" value=""></input>
               <input id="pac-input" class="controls" type="text" placeholder="Search" onclick="weatherforecastapi()"><asp:Button ID="Button1" runat="server" Text="Button" />
               <div id="map"></div>
    
               <script>
                  // This example adds a search box to a map, using the Google Place Autocomplete
                  // feature. People can enter geographical searches. The search box will return a
                  // pick list containing a mix of places and predicted search terms.

                  // This example requires the Places library. Include the libraries=places
                  // parameter when you first load the API. For example:
                  // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
                  var zoomin = 10;
                  function weatherforecastapi(){
                     var datefield = document.getElementById("datepicker");
                     var timefield = document.getElementById("time1");
                     var tempfield = document.getElementById("temp");
                     var tempvalue = document.getElementById("tempvalue");
                     var lat = document.getElementById("lat");
                     var long = document.getElementById("long");
                     var weatherimg = document.getElementById("weatherimg");
                     var weather = document.getElementById("weather");
                     fetch('https://api.openweathermap.org/data/2.5/forecast?lat='+lat.value+'&lon='+long.value+'&appid=2d200ddd86dab3ddd8144feccb326b46')
                     .then((res) => {
                     return res.json();
                     }).then((data) => {
                     if (data.Response === 'False') {
                        
                     } else {
                     var i;
                     datefieldvalue= datefield.value;
                     datefieldstring = datefieldvalue.substring(6,10) +'-'+ datefieldvalue.substring(3,5) +"-"+ datefieldvalue.substring(0,2)
                     var combined = new Date(datefieldstring + ' ' + timefield.value+':00');

                     for (i = 0; i < data.list.length; i++) { 
                        var date_format = new Date(data.list[i].dt_txt.replace(/-/g,"/"));
                        if (date_format>combined){
                              tempfield.value=(data.list[i].main.temp/10).toFixed(2).toString() ;
                              tempvalue.value=(data.list[i].main.temp/10).toFixed(2).toString();
                              if (data.list[i].weather[0].main == "Clouds"){
                                 weatherimg.src="../weatherimg/Clouds.png"
                                 weather.value="Clouds";
                              }else if (data.list[i].weather[0].main == "Clear"){
                                 weatherimg.src="../weatherimg/Clear.png"
                                 weather.value="Clear";
                              }else if (data.list[i].weather[0].main == "Rain"){
                                 weatherimg.src="../weatherimg/Rain.png"
                                 weather.value="Rain";
                              }
                              console.log(weather.value)
                              break;
                        }
                     }
                         }
                     })
                  }

                     
                  function initAutocomplete() {
                     var map = new google.maps.Map(document.getElementById('map'), {
                        center: { lat: Number(document.getElementById('lat').value), lng: Number(document.getElementById('long').value) },
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

                     function geocodeLatLng(geocoder, lat,long) {
                        var latlng = {lat: parseFloat(lat), lng: parseFloat(long)};
                        geocoder.geocode({'location': latlng}, function(results, status) {
                           if (status === 'OK') {
                              document.getElementById("city").value=results[3].formatted_address;
                           }
                        })
                     }
                     // Bias the SearchBox results towards current map's viewport.
                     map.addListener('bounds_changed', function () {
                        searchBox.setBounds(map.getBounds());
                        var bound = map.getBounds();
                        var lat= bound.getCenter();
                        var latstring = lat.toString();
                        var index = latstring.indexOf(",");
                        console.log(latstring.slice(1,index-1));
                        console.log(latstring.slice(index+2,latstring.length-1));
                        geocodeLatLng(geocoder,latstring.slice(1,index-1),latstring.slice(index+2,latstring.length-1))
                        document.getElementById('lat').value=latstring.slice(1,index-1);
                        document.getElementById('long').value=latstring.slice(index+2,latstring.length-1);
                        var datefield = document.getElementById("datepicker");
                        var timefield = document.getElementById("time1");
                        var tempfield = document.getElementById("temp");
                        var tempvalue = document.getElementById("tempvalue");
                        var lat = document.getElementById("lat");
                        var long = document.getElementById("long");
                        var weatherimg = document.getElementById("weatherimg");
                        var weather = document.getElementById("weather");
                        fetch('https://api.openweathermap.org/data/2.5/forecast?lat='+lat.value+'&lon='+long.value+'&appid=2d200ddd86dab3ddd8144feccb326b46')
                        .then((res) => {
                        return res.json();
                        }).then((data) => {
                        if (data.Response === 'False') {
                           
                        } else {
                        var i;
                        datefieldvalue= datefield.value;
                        datefieldstring = datefieldvalue.substring(6,10) +'-'+ datefieldvalue.substring(3,5) +"-"+ datefieldvalue.substring(0,2)
                        var combined = new Date(datefieldstring + ' ' + timefield.value+':00');

                        for (i = 0; i < data.list.length; i++) { 
                           var date_format = new Date(data.list[i].dt_txt.replace(/-/g,"/"));
                           if (date_format>combined){
                                 tempfield.value=(data.list[i].main.temp/10).toFixed(2).toString();
                                 tempvalue.value=(data.list[i].main.temp/10).toFixed(2).toString();
                                 if (data.list[i].weather[0].main == "Clouds"){
                                    weatherimg.src="../weatherimg/Clouds.png"
                                    weather.value="Clouds";
                                 }else if (data.list[i].weather[0].main == "Clear"){
                                    weatherimg.src="../weatherimg/Clear.png"
                                    weather.value="Clear";
                                 }else if (data.list[i].weather[0].main == "Rain"){
                                    weatherimg.src="../weatherimg/Rain.png"
                                    weather.value="Rain";
                                 }
                                 break;
                           }
                        }
                           }
                        })
                        
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
                  function autof(){
                     var field = document.getElementById('field').value
                     console.log(field)
                     var matchfield = ["ACSI", "Arena",
                                       "Cage Sports Park", "Euro Soccer Academy", 
                                       "Kismis Field", "Pasir Ris Outdoor Soccer Court",
                                       "Premier Pitch","Stadio Futsal",
                                       "Mini Soccer Field","Commonwealth Football Field",
                                    "Football Field @ Serangoon North","Futsal Court Bishan St 22",
                                    "Soccer and Recreational Park","International Soccer Academy"];
                     var matchimg=["/fieldimg/ACSISoccerField.jpg","/fieldimg/Arena.jpg", 
                                    "/fieldimg/CageSportsPark.jpg", "/fieldimg/EuroSoccerAcademy.JPG", 
                                    "/fieldimg/KismisField.jpg", "/fieldimg/PasirRisOutdoorSoccerCourt.jpg",
                                    "/fieldimg/PremierPitch.jpg","/fieldimg/StadioFutsal.jpg",
                                    "/fieldimg/MiniSoccerField.jpg","/fieldimg/CommonwealthFootballField.jpg",
                                    "/fieldimg/FootballFieldSerangoonNorth.jpg","/fieldimg/FutsalCourtBishanSt22.jpg",
                                    "/fieldimg/SoccerandRecreationalPark.jpg","/fieldimg/InternationalSoccerAcademy.jpg"]    
                     var matchlat=["1.302188999443529","1.342256999426888",
                                 "1.337684999428873","1.336107999429546",
                                 "1.37419319947344","1.336239999429476",
                                 "1.317958999437267","1.461190",
                                 "1.324417","1.302736",
                                 "1.365062","1.358801",
                                 "1.375678","1.336155"]
                     var matchlong=["103.780078","103.86749299999997",
                                    "103.79366699999991","103.77410989999998",
                                    "103.9515017","103.79684300000008",
                                    "103.855412", "103.822061",
                                    "103.859420","103.799091",
                                    "103.873215","103.843297"
                                    ,"103.891684","103.795834"]
                     var matchcity =["Queenstown, Singapore","48 Woodleigh Park, Singapore",
                                    "Bukit Timah, Singapore","Bukit Timah, Singapore",
                                    "1 Cheng Soon Ln, Singapore","117 Pasir Ris Central, Singapore",
                                    "2 Turf Club Rd, Singapore","255 Canberra Rd, Singapore",
                                    "Kallang, Singapore","Queenstown, Singapore",
                                    "Yio Chu Kang,Singapore","Bishan,Singapore",
                                    "Hougang Ave 6, Singapore","2 Turf Club Rd, Singapore"]
                     var fieldindex= -1;
                     var i;
                     for (i = 0; i < matchfield.length; i++) { 
                        if(matchfield[i]==field){
                              fieldindex=i;
                        }
                     }
                     console.log(fieldindex)
                     if (fieldindex!=-1){
                        zoomin+=6;
                        document.getElementById("poster").src=matchimg[fieldindex]
                        document.getElementById("imgurl").value=matchimg[fieldindex]
                        document.getElementById('lat').value=matchlat[fieldindex]
                        document.getElementById('long').value=matchlong[fieldindex]
                        maponchange()
                     }else{
                        document.getElementById("imgurl").value='none'
                     }
                  }
                  autof();
                  function datechange(){
                     if (document.getElementsByName("dateRelease").value!="" ){
                        document.getElementsByName("datevalue").value="1"
                     }
                     
                  }

               </script>
               <script
                  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDM3chrvGy6UQR3oZMm0w09umw96SULa-Q&libraries=places&callback=initAutocomplete"
                  async defer></script>
</body>
</html>
