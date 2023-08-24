<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Web GIS</title>

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
    integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
    crossorigin=""/>
</head>
<style>
    body{

        margin: 0;
        padding: 0;
    }
    #map { 
        height: 100vh; 
        width: 100vw; 
        }
</style>
<body>
    <div id="map"></div>
</body>
     <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
   integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
   crossorigin=""></script>
   
   <script>
    var map = L.map('map').setView([-3.3184075946385097, 114.59125237641902], 13);
    var defaultMap = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 20,
    attribution: '© OpenStreetMap'
    });

    googleStreets = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',{
        
        maxZoom: 19,
        subdomains:['mt0','mt1','mt2','mt3']
});

    var Esri_WorldImagery = L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
        
        
        attribution: 'Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'
    });
    Esri_WorldImagery.addTo(map);


    //COLORS CONTROL
    function style(feature) {
        return {
            fillColor: getColor(feature.properties.density),
            weight: 2,
            opacity: 1,
            color: 'white',
            dashArray: '3',
            fillOpacity: 0.7
        };
    }

    //LAYERS CONTROL

    var baseMaps = {
        "Google Streets" : googleStreets,
        "open street map" : defaultMap,
        "Esri WorldImagery" : Esri_WorldImagery,
    }

    fetch('http://localhost:8000/geojson/kecamatan.geojson').then(data => data.json()).then(geoJSONFeatures => {
	L.geoJSON(geoJSONFeatures, {
      style: (feature) => {
        return {
          stroke: true,
          color: 'blue',
          weight: 2,
          opacity: 0.7,
          fill: true,
          fillColor: 'aqua',
          fillOpacity: 0.15,
          smoothFactor: 0.5,
          interactive: false
        };
      }
    }).addTo(map);
});

    
    L.control.layers(baseMaps,null,{collapsed:false}).addTo(map);
   </script>
</html>