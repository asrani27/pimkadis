<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>TERAS DATA BERBAGI</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="/assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/assets/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/assets/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="https://ish.lol/leaflet-groupedlayercontrol/src/leaflet.groupedlayercontrol.css">
  
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/assets/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
  integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
  crossorigin=""/>
<style>
    body{

        margin: 0;
        padding: 0;
    }
    #map { 
        height: 100vh; 
        width: 100vw; 
        }
        .leaflet-control-layers{
            font-size:12px;
        }
    .leaflet-div-icon{
      background-color: transparent;
      border: none;
      size: 120px;
      margin-left: -12px !important;
      margin-top: -36px !important;
    }
    .leaflet-control-layers-group-label{
      font-weight: bold;
      color: red;
    }
</style>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-black-light layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container-fluid" style="box-shadow: 2px 2px 10px 10px rgba(0,0,0,.2);border-top-color: #37517e;">
        <div class="navbar-header">

            <a href="#" class="navbar-brand" style="color: #49b5e7; height:80px;line-height:50px;border-right:0px solid white; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size:28px;font-weight:400;letter-spacing:1px;padding-left:100px;"><b><img src="/logo/tb.png" width="50px">TERAS DATA BERBAGI</b></a> 
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav" >
            @include('menu')
          </ul>
        </div>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>


  <div id="map"></div>
  
</div>

<!-- jQuery 3 -->
<script src="/assets/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="/assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/assets/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- ./wrapper -->
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="crossorigin=""></script>
<script src="https://bakawan.banjarmasinkota.go.id/plugins/leaflet-groupedlayercontrol/example/exampledata.js"></script>
<script src="https://ish.lol/leaflet-groupedlayercontrol/src/leaflet.groupedlayercontrol.js"></script>
   
<script>

function randomRGB() {
  var x = Math.floor(Math.random() * 256);
  var y = Math.floor(Math.random() * 256);
  var z = Math.floor(Math.random() * 256);
  var RGBColor = "rgb(" + x + "," + y + "," + z + ")";  
  console.log(RGBColor);

  return RGBColor
}

function generateIcon(color = 'blue') {
return `<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xodm="http://www.corel.com/coreldraw/odm/2003" xml:space="preserve" width="32px" height="32px" version="1.1" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd" viewBox="0 0 24.68 35.44" fill="${color}">
 <g id="Layer_x0020_1">
  <metadata id="CorelCorpID_0Corel-Layer"/>
  <path class="fil0" d="M11.28 0.05c-2.19,0.2 -4.18,0.9 -5.64,1.93 -1.62,1.15 -2.69,2.06 -3.74,3.79 -2.09,3.44 -2.57,7.94 -0.87,12.06 1.95,4.72 7.2,9.17 9.05,13.52 0.46,1.08 1.07,3.52 1.67,3.92 0.46,0.31 1.07,0.16 1.38,-0.14 0.39,-0.38 0.81,-1.99 1.07,-2.69 2.35,-6.38 8.54,-10.24 10.03,-16.29 2.3,-9.31 -4.54,-16.86 -12.95,-16.1zm1.06 5.86c3.61,0 6.54,2.93 6.54,6.54 0,3.61 -2.93,6.54 -6.54,6.54 -3.61,0 -6.54,-2.93 -6.54,-6.54 0,-3.61 2.93,-6.54 6.54,-6.54z"/>
 </g>
</svg>`
}


var dynamicIcon = generateIcon()

    var kecamatan = {!!json_encode($kecamatan)!!}
    var kelurahan = {!!json_encode($kelurahan)!!}
    var attribut = {!!json_encode($attribut)!!}
    console.log(attribut)
    
 var map = L.map('map').setView([-3.3184075946385097, 114.59125237641902], 13);
    googleStreets = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',{
        maxZoom: 19,
        subdomains:['mt0','mt1','mt2','mt3']
    }).addTo(map);
var openstreetmap = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
});

    let kelurahanLayer = L.geoJson(null);
    let Kelurahan = L.geoJson(null, {
        style: function (feature) {
          return {
            color: "#000",
            fill: true,
            fillOpacity: 0,
            opacity: 0.3,
            width: 0.01,
            clickable: false,
            riseOnHover: true
          };
        },
    })
    $.getJSON("/geojson/kelurahan.json", function ( response ) {

      
      console.log(response.data.features);
      console.log(response.data.features[0].properties.KELURAHAN);
        // Kelurahan.addData(response.data).bindTooltip(response.data.features[0].properties.KELURAHAN);
    });

let kecamatanColors = {"Banjarmasin Barat":"#ffb400",
        "Banjarmasin Selatan":"#70a1d7",
        "Banjarmasin Tengah":"#a1de93",
        "Banjarmasin Timur":"#f47c7c",
        "Banjarmasin Utara":"#f7f48b"};

    //   let kecamatanLayer = L.geoJson(null);
      let Kecamatan = L.geoJson(null, {
        style: function (feature) {
          return {
            name: Kecamatan,
            color: "white",
            fillColor: kecamatanColors[feature.properties.KECAMATAN],
            fillOpacity: 0.7,
            opacity: 1,
            width: 1,
            dashArray: '3',
            clickable: true,
            riseOnHover: true
          };
        },
    })

    $.getJSON("/geojson/kecamatan.json", function ( response ) {
        Kecamatan.addData(response.data)
    });

var baseMaps = {
    "Google Streets": googleStreets,
    "Openstreetmap": openstreetmap,
};

var overlays ={
    'Batas Kecamatan': Kecamatan,
    'Batas Kelurahan': Kelurahan,
}

var groupedOverlays = {
  'Batas Wilayah': {
    'Batas Kecamatan': Kecamatan,
    'Batas Kelurahan': Kelurahan,
  },
  'Attribut': {
  },
}

map.addLayer(Kecamatan)


var layerControl = L.control.groupedLayers(baseMaps, groupedOverlays,{collapsed:false}).addTo(map);



// var layerControl = L.control.layers(baseMaps, overlays,{collapsed:false}).addTo(map);
var greenIcon = L.icon({
    iconUrl: '/icon/green.png',
    //shadowUrl: 'leaf-shadow.png',

    iconSize:     [38, 42], // size of the icon
    shadowSize:   [50, 64], // size of the shadow
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});
var blueIcon = L.icon({
    iconUrl: '/icon/blue.png',
    //shadowUrl: 'leaf-shadow.png',

    iconSize:     [38, 42], // size of the icon
    shadowSize:   [50, 64], // size of the shadow
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});
var redIcon = L.icon({
    iconUrl: '/icon/red.png',
    //shadowUrl: 'leaf-shadow.png',

    iconSize:     [38, 42], // size of the icon
    shadowSize:   [50, 64], // size of the shadow
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});
    let kecamatans = kecamatan.map(kec => {
      
// console.log([kec,'testset']);
      if(kec.file === null){
        return L.marker([kec.lat, kec.long], {icon: redIcon}).bindPopup('<h5>Kecamatan '+kec.nama+'</h5><p><img src="https://borisbecker.ae/assets/uploads/media-uploader/noimage1688562406.jpg" / width="200px" height="150px"></p>')
      }else{
        return L.marker([kec.lat, kec.long], {icon: redIcon}).bindPopup('<h5>Kecamatan '+kec.nama+'</h5><p><img src="/storage/tagging/'+kec.file+'" / width="200px" height="150px"></p>')
      }
    })
    
    let kelurahans = kelurahan.map(kel => {
      if(kel.file === null){
        return L.marker([kel.lat, kel.long], {icon: blueIcon}).bindPopup('<h5>Kelurahan '+kel.nama+'</h5><p><img src="https://borisbecker.ae/assets/uploads/media-uploader/noimage1688562406.jpg" / width="200px" height="150px"></p>')
      }else{
        return L.marker([kel.lat, kel.long], {icon: blueIcon}).bindPopup('<h5>Kelurahan '+kel.nama+'</h5><p><img src="/storage/tagging/'+kel.file+'" / width="200px" height="150px"></p>')
      }
    })
    var kec = L.layerGroup(kecamatans);
    var kel = L.layerGroup(kelurahans);

    layerControl.addOverlay(kec, "Kecamatan", 'Attribut');
    layerControl.addOverlay(kel, "Kelurahan", 'Attribut');


    var noimage = 'https://borisbecker.ae/assets/uploads/media-uploader/noimage1688562406.jpg'
    attribut.map(at => {
      const color = randomRGB()
        const markers = at.tagging.map(tag => {
              
          if(tag.file === null){
            return L.marker([tag.lat, tag.long], {icon: greenIcon}).bindPopup('<h5>'+tag.nama+'</h5><p><img src="https://borisbecker.ae/assets/uploads/media-uploader/noimage1688562406.jpg" / width="200px" height="150px"></p>')
          }else{
            return L.marker([tag.lat, tag.long], {icon: greenIcon}).bindPopup('<h5>'+tag.nama+'</h5><p><img src="/storage/tagging/'+tag.file+'" / width="200px" height="150px"></p>')
          }

        })

        const att = L.layerGroup(markers);
        return layerControl.addOverlay(att, at.nama, 'Attribut')
    })

</script>

</body>

</html>
