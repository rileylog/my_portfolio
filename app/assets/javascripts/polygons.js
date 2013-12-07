// var x=new google.maps.LatLng(40.5555,-111.888); // Center point
// // Coordinates
// var y=new google.maps.LatLng(40.66666,-111.5555);
// var z=new google.maps.LatLng(40.66666,-112.003);
// var a=new google.maps.LatLng(40.55555,-111.888);
// var myTrip=[y,z,a];

// function initialize(){
//   // Sets up the default map
//   var mapProp = {
//     center:x,
//     zoom:10,
//     mapTypeId: google.maps.MapTypeId.ROADMAP
//   };
  
//   // Creates a new map & shoves it into #googleMap container
//   var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

  

//   // Creates a new polygon with the coordinates
//   var flightPath=new google.maps.Polygon({
//     path:myTrip,
//     strokeColor:"#0000FF",
//     strokeOpacity:0.8,
//     strokeWeight:2,
//     fillColor:"#0000FF",
//     fillOpacity:0.4
//   });
//   var ctaLayer = new google.maps.KmlLayer({
//     url: 'https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20West.kml'
//   });
  
//   ctaLayer.setMap(map);
//   flightPath.setMap(map);

//   // Listen for click event handler
//   google.maps.event.addListener(ctaLayer, 'click', addPoint);
//   google.maps.event.addListener(flightPath, 'click', addPoint);
// }

// function addPoint(event) {
//   // console.log(event);
//   // Write to the data
//   $('#data').html("<p>Latitude " + event.latLng.pb + "</p>" + "<p>Longitude " + event.latLng.qb + "</p>")
// }
// // Initialize the map
// google.maps.event.addDomListener(window, 'load', initialize);