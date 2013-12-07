initialize = ->
  mapProp =
    center: x
    zoom: 10
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById("googleMap"), mapProp)
  flightPath = new google.maps.Polygon(
    path: myTrip
    strokeColor: "#0000FF"
    strokeOpacity: 0.8
    strokeWeight: 2
    fillColor: "#0000FF"
    fillOpacity: 0.4
  )
  kmlLayer = new google.maps.KmlLayer(ctaLayer,
    suppressInfoWindows: true
    preserveViewport: false
    map: map
  )
  kmlLayer.setMap map
  flightPath.setMap map
  google.maps.event.addListener kmlLayer, "click", addPoint
  google.maps.event.addListener flightPath, "click", addPoint
addPoint = (event) ->
  console.log event
  $("#data").html "
    <div class='table-responsive'>
      <table class='table table-bordered table-striped'>
        <thead>
          <tr>
            <td>Latitude </td>
            <td>Longitude </td>
          </tr>        
        </thead>
        <tbody>
          <tr>
            <td> #{event.latLng.pb} </td>
            <td> #{event.latLng.qb} </td>
          </tr>              
        </tbody>
      </table>
    </div>
    "
ctaLayer = "https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20West.kml"
x = new google.maps.LatLng(40.5555, -111.888)
y = new google.maps.LatLng(40.66666, -111.5555)
z = new google.maps.LatLng(40.66666, -112.003)
a = new google.maps.LatLng(40.55555, -111.888)
myTrip = [ y, z, a ]
google.maps.event.addDomListener window, "load", initialize