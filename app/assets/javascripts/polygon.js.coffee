# initialize = ->
#   mapProp =
#     center: x
#     zoom: 10
#     mapTypeId: google.maps.MapTypeId.ROADMAP

#   map = new google.maps.Map(document.getElementById("googleMap"), mapProp)

#   # kmlSlvwest = new google.maps.KmlLayer(slvWest,
#   #   suppressInfoWindows: true
#   #   preserveViewport: false
#   #   map: map
#   # )
#   # kmlSlvcentral = new google.maps.KmlLayer(slvCental,
#   #   suppressInfoWindows: true
#   #   preserveViewport: false
#   #   map: map
#   # )
#   kmlSlveast = new google.maps.KmlLayer(slvEast,
#     suppressInfoWindows: true
#     preserveViewport: false
#     map: map
#   )
#   kmlSlvnorth = new google.maps.KmlLayer(slvNorth,
#     suppressInfoWindows: true
#     preserveViewport: false
#     map: map
#   )
#   kmlTest = new google.maps.KmlLayer(test,
#     suppressInfoWindows: true
#     preserveViewport: false
#     map: map
#   )
#   kmlTest.setMap map
#   kmlSlveast.setMap map
#   kmlSlvnorth.setMap map
#   # kmlSlvwest.setMap map
#   # kmlSlvcentral.setMap map
#   # google.maps.event.addListener kmlSlvwest, "click", addPoint
#   # google.maps.event.addListener kmlSlvcentral, "click", addPoint
#   google.maps.event.addListener kmlSlveast, "click", addPoint
#   google.maps.event.addListener kmlSlvnorth, "click", addPoint
#   google.maps.event.addListener kmlTest, "click", addPoint
# addPoint = (event) ->
#   console.log event
#   $.get "/map_data", {map_point: "whoooo"}, (data) ->
#     #$(".result").html data
#     console.log data
#     #alert "Load was performed."

#   $("#data").html "
#     <div class='table heading'>
#       <table class='table table-bordered table-striped'>
#         <thead>
#           <tr>
#             <td> #{event.featureData.name} </td>
#             <td> #{event.featureData.description} </td>
#           </tr>        
#         </thead>
#         <tbody>
#           <tr>
#             <td> #{event.featureData.infoWindowHtml} </td>
#             <td> #{event.latLng.qb} </td>
#           </tr>              
#         </tbody>
#       </table>
#     </div>
#     "
# # slvWest = "https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20West.kml"
# # slvCental = "https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20Central.kml"
# slvEast = "https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20East.kml"
# slvNorth = "https://dl.dropboxusercontent.com/u/38076607/SLV%20-%20North.kml"
# test = "https://dl.dropboxusercontent.com/u/38076607/created_test.kml"
x = new google.maps.LatLng(40.5555, -111.888)
# google.maps.event.addDomListener window, "load", initialize


initialize_kml_areas = ->
  mapProp =
    center: x
    zoom: 10
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById("googleMap"), mapProp)

  $(".kml_paths").each (index, value) ->
    kml_path = $(value)
    kml_layer = new google.maps.KmlLayer(kml_path.data("path"),
      suppressInfoWindows: true
      preserveViewport: true
      map: map
    )
    kml_layer.setMap map
    google.maps.event.addListener kml_layer, "click", addPoint

addPoint = (event) ->
  # console.log event
  map_data = undefined
  $.get "/map_data", map_point: event.featureData.id, (data) ->
    # console.log event.featureData.id
    map_data = data.map_data
    console.log map_data

    $("#data").html "      
    <div class='table heading'>        
      <table class='table table-bordered table-striped'>          
        <h3> " + map_data.name + " </h3>
        <thead>            
          <tr>              
            <td><b>Volume</b></td>              
            <td><b>Source</b></td>
            <td><b>Transferability</b></td>
          </tr>                  
        </thead>          
        <tbody>            
          <tr>              
            <td> " + map_data.volume + " </td>              
            <td> " + map_data.area_type + " </td>
            <td> " + map_data.transfer + " </td>            
          </tr>                        
        </tbody>        
        </table>      
    </div>      "

google.maps.event.addDomListener window, "load", initialize_kml_areas