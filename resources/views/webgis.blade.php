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
  
  <aside class="control-sidebar control-sidebar-dark control-sidebar-open" style="padding-top:1px;margin-top:100px;margin-right:3px;border-radius:10px;opacity:0.8">
    <!-- Create the tabs -->
    
    <!-- Tab panes -->
    <div class="tab-content" style="opacity:0.8px;">
      <div id="control-sidebar-theme-demo-options-tab" class="tab-pane active">
        <div>
            <h4 class="control-sidebar-heading">CONTROL PANEL :</h4>
        </div>
        <hr class="mb-2">
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right" id="batasKecamatan" onclick="batasKecamatan()"> Batas Wilayah Kecamatan
            </label>
        </div>    
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right"> Batas Wilayah Kelurahan
            </label>
        </div>   
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right" id="myKecamatan" onclick="myKecamatan()" > Kecamatan
            </label>
        </div>   
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right"> SKPD
            </label>
        </div> 
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right"> Wisata
            </label>
        </div>   
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right"> BTS
            </label>
        </div>   
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right"> Puskesmas
            </label>
        </div>   
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right"> Mall
            </label>
        </div>   
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right"> Sekolah
            </label>
        </div>  
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right"> Rumah Sakit
            </label>
        </div>  
        <div class="form-group">
            <label class="control-sidebar-subheading">
                <input type="checkbox" data-layout="fixed" class="pull-right"> UMKM Lokal
            </label>
        </div>  
    </div>
  </aside>
  <div id="map"></div>
  
</div>
<!-- ./wrapper -->

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


<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
   integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
   crossorigin=""></script>
   
<script>
    var map = L.map('map').setView([-3.3184075946385097, 114.59125237641902], 13);

    googleStreets = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',{
        maxZoom: 19,
        subdomains:['mt0','mt1','mt2','mt3']
    });

    googleStreets.addTo(map);


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
    

    
    L.control.layers(baseMaps,null,{collapsed:false}).addTo(map);
   </script>

   <script>
    function myKecamatan() {
        var checkBox = document.getElementById("myKecamatan");
        if (checkBox.checked == true){
            // Creating a marker
            var marker = L.marker([-3.3184075946385097, 114.59125237641902]);
            console.log(map);
            map.addLayer(marker);
            
            // marker.addTo(map);
            marker.bindPopup("Banjarmasin Tengah").openPopup();
        } else {
            
            var marker = L.marker([-3.3184075946385097, 114.59125237641902]);
            map.removeLayer(marker);
        }
    }
    function batasKecamatan() {
        var checkBox = document.getElementById("batasKecamatan");
        if (checkBox.checked == true){
            
            fetch('/geojson/kecamatan.geojson').then(data => data.json()).then(geoJSONFeatures => {
            L.geoJSON(geoJSONFeatures, {
            style: (feature) => {
                return {
                stroke: true,
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
        } else {
            var layer = L.marker([-3.3184075946385097, 114.59125237641902]).addTo(map);
            layer.addTo(map);
            layer.remove();
        }
    }
   </script>
</body>

</html>
