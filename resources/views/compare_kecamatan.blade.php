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
  <!-- Select2 -->
  <link rel="stylesheet" href="/assets/bower_components/select2/dist/css/select2.min.css">
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

<!-- IziToast -->
<link rel="stylesheet" href="/notif/dist/css/iziToast.min.css">
<script src="/notif/dist/js/iziToast.min.js" type="text/javascript"></script>
<style>
    body{

        margin: 0;
        padding: 0;
    }
    #map { 
      background: #fff;
        height: 600px; 
        width: 100%; 
        }
    #map1 { 
      background: #fff;
        border:"1px solid black";
        height: 400px; 
        width: 100%; 
        }
    #map2 { 
      background: #fff;
        height: 400px; 
        width: 100%; 
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
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          {{-- Bandingkan Data --}}
        </h1>
        
      </section>

      <!-- Main content -->
      <section class="content">
        <!-- SELECT2 EXAMPLE -->
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Profil Wilayah Berdasarkan Kecamatan</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <form method="post" action="/compare/kecamatan">
          @csrf
        <div class="box-body">
          <div class="row">
            
            <div class="col-md-12">
              <div class="form-group">
                <label>Kecamatan</label>
                <select id="selected-kecamatan" name="kecamatan_id[]" class="form-control select2" multiple="multiple" data-placeholder="Select kecamatan"
                        style="width: 100%;" required>
                      @if ($oldkecamatan == null)
                        @foreach ($kecamatan as $item)
                        <option value="{{$item->id}}">{{$item->nama}}</option>
                        @endforeach
                      @else
                        @foreach ($kecamatan as $item)
                        <option value="{{$item->id}}" {{$oldkecamatan->contains($item->id) == true ? 'selected':''}}>{{$item->nama}}</option>
                        @endforeach 
                      @endif

                        {{-- @foreach ($kecamatan as $item)
                            <option value="{{$item->id}}">{{$item->nama}}</option>
                        @endforeach --}}
                        
                </select>
              </div>
              <div class="form-group">
                <label>Data Yang Di Bandingkan</label>
                <select name="jenis" class="form-control select2">
                        @foreach ($attribut as $item)
                            <option value="{{$item->id}}" {{$item->id == old('jenis') ? 'selected':''}}>{{$item->nama}}</option>
                        @endforeach
                </select>
              </div>
              <!-- /.form-group -->
              
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          <button type="submit" class="btn btn-success btn-block">TAMPILKAN</button>
        </div>
        </form>
      </div>


      @if ($compareKecamatan != null)

      
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Hasil</h3>
        </div>
        <!-- /.box-header -->
        
        <div class="box-body">
          <div class="row">
            
            <div class="col-md-12">
              
              <table class="table table-hover">
                <tbody>
                <tr>
                  <th class="text-center">No</th>
                  <th>Attribut</th>
                  @foreach ($kecamatan_id as $item)
                      <th>{{$item->nama}}</th>
                  @endforeach
                </tr>
                @php
                    $no=1;
                @endphp
                @foreach ($data as $key => $item)
                <tr>
                    <td class="text-center">{{$no++}}</td>
                    <td>{{$item->nama}}</td>
                    @foreach ($item->kecamatan as $item2)
                        <td>{{nilai($item->id, $item2->id)}} {{$item->satuan}}</td>
                    @endforeach
                    

                    
                </tr>
                @endforeach
                
              </tbody>
            </table>
              
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        
      </div>
      
      <div class="row">
        <div class="col-md-6">
          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title" style="font-size: 24px; font-weight:bold">{{strtoupper($kecamatan_id[0]->nama)}}</h3>
            </div>
              <div class="box-body">
                <div class="col-md-7 text-center">
                  <div id="map1"></div>
                </div>
                <div class="col-md-5">
                  <strong>
                    LUAS WILAYAH :<BR/>
                    {{$kecamatan_id[0]->lw}} Km2<BR/><BR/>
                    JUMLAH PENDUDUK : <BR/>
                    {{number_format((int)$kecamatan_id[0]->jp)}} JIWA
                  </strong>
                  <h4>PERSENTASE {{strtoupper($datayangdibandingkan)}}</h4>
                  <div id="chartContainer1" style="height: 200px; width: 100%;"></div>
                </div>
              </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title" style="font-size: 24px; font-weight:bold">{{strtoupper($kecamatan_id[1]->nama)}}</h3>
            </div>
              <div class="box-body">
                <div class="col-md-7">
                  <div id="map2"></div>
                </div>
                <div class="col-md-5">

                  <strong>
                    LUAS WILAYAH :<BR/>
                    {{$kecamatan_id[1]->lw}} Km2<BR/><BR/>
                    JUMLAH PENDUDUK : <BR/>
                    {{number_format((int)$kecamatan_id[1]->jp)}} JIWA
                  </strong>
                  <h4>PERSENTASE {{strtoupper($datayangdibandingkan)}}</h4>

                  <div id="chartContainer2" style="height: 200px; width: 100%;"></div>
                </div>
              </div>
          </div>
        </div>
      </div>
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Geospasial</h3>
        </div>
        <div class="box-body text-center">
          <div class="row">

            <div class="col-md-12 text-center">
              <div id="map"></div>
            </div>
          </div>
        </div>
      </div>

     


      {{-- <div class="row">
        @foreach ($data as $item)
            
        <div class="col-md-6">
          <div class="box box-default">
          <div class="box-header with-border">
            <h3 class="box-title">Grafik {{$item->nama}}</h3>
          </div>
          <div class="box-body">
            <div id="chartContainer" style="height: 300px; width: 100%;"></div>
          </div>
          </div>
        </div>
        @endforeach
      </div> --}}

      @endif
      <!-- /.box -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.container -->
  </div>
  
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="/assets/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="/assets/bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- SlimScroll -->
<script src="/assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/assets/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/assets/dist/js/adminlte.min.js"></script>

<!-- AdminLTE for demo purposes -->

<script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>

<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
crossorigin=""></script>
@if ($grafik1 == null)
    
@else
    
<script type="text/javascript">
  var attribut = {!!json_encode($grafik1)!!}
    attribut.forEach(element => {
        console.log(element);
        var chart = new CanvasJS.Chart("chartContainer1", {
        animationEnabled: true,
        data: [{
          type: "column",  
          toolTipContent: "<b>{label}</b><br>{y} "+element.satuan+"<br>",
          showInLegend: true, 
          legendMarkerColor: "grey",
          legendText: "Data",
          dataPoints: element.grafik
        }]
      });
        var chart2 = new CanvasJS.Chart("chartContainer2", {
        animationEnabled: true,
        data: [{
          type: "column",  
          toolTipContent: "<b>{label}</b><br>{y} "+element.satuan+"<br>",
          showInLegend: true, 
          legendMarkerColor: "grey",
          legendText: "Data",
          dataPoints: element.grafik
        }]
      });
      chart.render()
      chart2.render()
    });
   
    
</script>
@endif
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()
  });
</script>
<script>
 
 const selectedKecamatan = {!!json_encode($kecamatan_id)!!}
var peta1 = selectedKecamatan[0].nama;
var peta2 = selectedKecamatan[1].nama;
 if(peta1 === 'Banjarmasin Tengah'){
    var mapkec1 = L.map('map1', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.318060, 114.589410], 13);
    var jsonkec1 = JSON.parse($.ajax({'url': "/geojson/bjmtengahline.json", 'async': false}).responseText).data; 
  }
  if(peta1 === 'Banjarmasin Timur'){
    var mapkec1 = L.map('map1', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.323640, 114.623513], 12);
    var jsonkec1 = JSON.parse($.ajax({'url': "/geojson/bjmtimurline.json", 'async': false}).responseText).data; 
  }
  if(peta1 === 'Banjarmasin Barat'){
    var mapkec1 = L.map('map1', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.317251, 114.573746], 13);
    var jsonkec1 = JSON.parse($.ajax({'url': "/geojson/bjmbaratline.json", 'async': false}).responseText).data;
  }
  if(peta1 === 'Banjarmasin Selatan'){
    var mapkec1 = L.map('map1', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.346411, 114.583815], 12);
    var jsonkec1 = JSON.parse($.ajax({'url': "/geojson/bjmselatanline.json", 'async': false}).responseText).data; 
  }
  if(peta1 === 'Banjarmasin Utara'){
    var mapkec1 = L.map('map1', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.291572, 114.598542], 12);
    var jsonkec1 = JSON.parse($.ajax({'url': "/geojson/bjmutaraline.json", 'async': false}).responseText).data; 
  }

  if(peta2 === 'Banjarmasin Tengah'){
    var mapkec2 = L.map('map2', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.318060, 114.589410], 13);
    var jsonkec2 = JSON.parse($.ajax({'url': "/geojson/bjmtengahline.json", 'async': false}).responseText).data; 
  }
  if(peta2 === 'Banjarmasin Timur'){
    var mapkec2 = L.map('map2', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.323640, 114.623513], 12);
    var jsonkec2 = JSON.parse($.ajax({'url': "/geojson/bjmtimurline.json", 'async': false}).responseText).data; 
  }
  if(peta2 === 'Banjarmasin Barat'){
    var mapkec2 = L.map('map2', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.317251, 114.573746], 13);
    var jsonkec2 = JSON.parse($.ajax({'url': "/geojson/bjmbaratline.json", 'async': false}).responseText).data;
  }
  if(peta2 === 'Banjarmasin Selatan'){
    var mapkec2 = L.map('map2', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.346411, 114.583815], 12);
    var jsonkec2 = JSON.parse($.ajax({'url': "/geojson/bjmselatanline.json", 'async': false}).responseText).data; 
  }
  if(peta2 === 'Banjarmasin Utara'){
    var mapkec2 = L.map('map2', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.291572, 114.598542], 12);
    var jsonkec2 = JSON.parse($.ajax({'url': "/geojson/bjmutaraline.json", 'async': false}).responseText).data; 
  }

  L.geoJson(jsonkec1,{
    style:function(feature){
      return{
        fillColor: 'orange',
        fillOpacity:10,
        weight: 5,
      }
    }
  }).addTo(mapkec1);

  L.geoJson(jsonkec2,{
    style:function(feature){
      return{
        fillColor: 'orange',
        fillOpacity:10,
        weight: 5,
      }
    }
  }).addTo(mapkec2);
  
  
 var mapkec = L.map('map', {scrollWheelZoom: false ,zoomControl: false,doubleClickZoom: false}).setView([-3.318060, 114.589410], 13);
 var jsonkec = JSON.parse($.ajax({'url': "/geojson/kecamatan.json", 'async': false}).responseText); 

 var layerMapkec = L.tileLayer('https://{s}.tile.jawg.io/jawg-dark/{z}/{x}/{y}{r}.png?access-token={accessToken}', {
    attribution: '<a href="http://jawg.io" title="Tiles Courtesy of Jawg Maps" target="_blank">&copy; <b>Jawg</b>Maps</a> &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
    minZoom: 0,
    maxZoom: 22,
    subdomains: 'abcd',
    accessToken: 'eRFCsGIiHUoMtLKDSNdmhI2pONyzAYl0mH7qe2PtDlC6gYUR3teEbt9GaQCHjq1r'
  }).addTo(mapkec);



  const data = {!!json_encode($data)!!}
  console.log({data, selectedKecamatan});

  // let total = 0;
  const total = selectedKecamatan.reduce((current, newData) => current += Number(newData?.value || 0), 0)
  console.log({total});
  L.geoJson(jsonkec.data,{
    //jika ada kecamatan yang dipilih warnanya putih
    
    style:function(feature){
      const name = feature.properties.KECAMATAN
      const findData = selectedKecamatan.find(k => k.nama === name)
      const value = Number(findData?.value||1);
      const opacity = value/total;

      console.log({value, opacity});
      return{
        fillColor:findData ? 'red' : 'white',
        fillOpacity:opacity,
        weight:4
      }
    },
    onEachFeature:function(feature, layer){
      const name = feature.properties.KECAMATAN
      const findData = selectedKecamatan.find(k => k.nama === name)
      let text = name
      if (findData) text = `<center><h5>${name} <br/> ${findData.value}</h5> </center>`
      layer.bindPopup(text);
    }
  }).addTo(mapkec);
  </script>
</body>
<script>
  @include('layouts.notif')
  </script>

</html>
