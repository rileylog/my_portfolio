initialize = ->
  mapProp =
    center: x
    zoom: 10
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById("googleMap"), mapProp)

  kmlSlvwest = new google.maps.KmlLayer(slvWest,
    suppressInfoWindows: true
    preserveViewport: false
    map: map
  )
  kmlSlvcentral = new google.maps.KmlLayer(slvCental,
    suppressInfoWindows: true
    preserveViewport: false
    map: map
  )
  kmlSlveast = new google.maps.KmlLayer(slvEast,
    suppressInfoWindows: true
    preserveViewport: false
    map: map
  )
  kmlSlvnorth = new google.maps.KmlLayer(slvNorth,
    suppressInfoWindows: true
    preserveViewport: false
    map: map
  )
  kmlTest = new google.maps.KmlLayer(test,
    suppressInfoWindows: true
    preserveViewport: false
    map: map
  )
  kmlTest.setMap map
  kmlSlveast.setMap map
  kmlSlvnorth.setMap map
  kmlSlvwest.setMap map
  kmlSlvcentral.setMap map
  google.maps.event.addListener kmlSlvwest, "click", addPoint
  google.maps.event.addListener kmlSlvcentral, "click", addPoint
  google.maps.event.addListener kmlSlveast, "click", addPoint
  google.maps.event.addListener kmlSlvnorth, "click", addPoint
  google.maps.event.addListener kmlTest, "click", addPoint
addPoint = (event) ->
  console.log event
  $("#data").html "
    <div class='table heading'>
      <table class='table table-bordered table-striped'>
        <thead>
          <tr>
            <td> #{event.featureData.name} </td>
            <td> #{event.featureData.description} </td>
          </tr>        
        </thead>
        <tbody>
          <tr>
            <td> #{event.featureData.infoWindowHtml} </td>
            <td> #{event.latLng.qb} </td>
          </tr>              
        </tbody>
      </table>
    </div>
    "
slvWest = "https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20West.kml"
slvCental = "https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20Central.kml"
slvEast = "https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20East.kml"
slvNorth = "https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20North.kml"
test = "https://dl.dropboxusercontent.com/u/38076607/created_test.kml"
x = new google.maps.LatLng(40.5555, -111.888)
google.maps.event.addDomListener window, "load", initialize