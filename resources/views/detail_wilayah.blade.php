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
  
<script src="https://ebrelsford.github.io/Leaflet.snogylop/src/leaflet.snogylop.js"></script>
  <link rel="stylesheet" href="/assets/dist/css/skins/_all-skins.min.css">
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
  integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
  crossorigin=""/>
<style>
    body{

        margin: 0;
        padding: 0;
    }
    .map { 
        background: #fff;
        height: 350px; 
        width: 100%; 
      }

    #mapkecamatan { 
        height: 500px; 
        width: 100%; 
      }

    #mapkecamatan2 { 
        background: #fff;
        height: 350px; 
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
        <div class="row">
          <div class="col-md-5">
          <div class="box">
            {{-- <div class="box-header with-border">
              <h3 class="box-title">Statistik Wilayah {{strtoupper($detail->nama)}}</h3>

              <div class="box-tools pull-right">
              <a href="/profilwilayah" class="btn btn-danger btn-sm"><i class="fa fa-arrow-left"></i> Kembali</a>
              <a href="/profilwilayah/{{$detail->id}}/cetak" class="btn btn-primary btn-sm"><i class="fa fa-print"></i> Download</a>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
              </div>
            </div> --}}
            <!-- /.box-header -->
            <form method="post" action="/compare/kecamatan">
              @csrf
            <div class="box-body no-padding ">  
                <div class="col-md-12 text-center bg-orange-gradient">
                    <h1>{{$detail->nama}}</h1>
                    <div id="mapkecamatan2"></div>
                    <h3>JUMLAH PENDUDUK</h3>
                    
                    @if ($jumlah_penduduk == null)
                        <h2>0</h2>
                    @else
                        <h2>{{number_format((int)$jumlah_penduduk->value)}}</h2>
                    @endif
                    <h4>
                    Laki-Laki : 0 Jiwa, Perempuan : 0 Jiwa<br/>
                    Kepadatan Penduduk : 0 %<br/>
                    Luas Wilayah : 0 m2<br/>

                  </h4>
                </div>
            </div>
            </form>
          </div>
          </div>
          <div class="col-md-7">
            <div class="box">
              <!-- /.box-header -->
              <form method="post" action="/compare/kecamatan">
                @csrf
              <div class="box-body no-padding">
                  
                  <div class="col-md-12 text-center">
                    <div id="mapkecamatan"></div>
                  </div>
                  <!-- /.col -->
                <!-- /.row -->
              </div>
              </form>
            </div>
            </div>
        </div>
        
        @if ($attribut->count() != 0)
        <div class="row">
            @foreach ($attribut as $key => $item)
              <div class="col-md-4">
                <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">{{strtoupper($item->nama)}} </h3>
                </div>
                <div class="box-body text-center">
                  <h3 style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">{{strtoupper($item->deskripsi)}} {{$item->value == 0 ? '0' : number_format($item->value)}} {{$item->satuan}}</h3>
                  <div id="map{{$item->id}}" class="map"></div>
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- Progress bars -->
                      <div class="clearfix">
                        <span class="pull-left">0-25%</span>
                      </div>
                      <div class="progress xs" style="margin-bottom: 0px;">
                        <div class="progress-bar progress-bar-blue" style="width: 100%;"></div>
                      </div>
    
                      <div class="clearfix">
                        <span class="pull-left">26-50%</span>
                      </div>
                      <div class="progress xs" style="margin-bottom: 0px;">
                        <div class="progress-bar progress-bar-blue" style="width: 100%;"></div>
                      </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-6">
                      <div class="clearfix">
                        <span class="pull-left">51-75%</span>
                      </div>
                      <div class="progress xs" style="margin-bottom: 0px;">
                        <div class="progress-bar progress-bar-blue" style="width: 100%;"></div>
                      </div>
    
                      <div class="clearfix">
                        <span class="pull-left">76-100%</span>
                      </div>
                      <div class="progress xs" style="margin-bottom: 0px;">
                        <div class="progress-bar progress-bar-blue" style="width: 100%;"></div>
                      </div>
                    </div>
                    <!-- /.col -->
                  </div>
                </div>
                {{-- <div class="box-footer">
                  Catatan :
                </div> --}}
                </div>
              </div>
            @endforeach
        </div>
        @else
            
        @endif
        
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
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()
  });

  var dataAttribut = {!!json_encode($attribut)!!}
  var kecamatan = {!!json_encode($detail)!!}
  var kelurahan = {!!json_encode($kelurahan)!!}

  if(kecamatan.nama === 'Banjarmasin Tengah'){
    var mapkec = L.map('mapkecamatan').setView([-3.318060, 114.589410], 14);
    var mapkec2 = L.map('mapkecamatan2').setView([-3.318060, 114.589410], 14);
    var jsonkec = JSON.parse($.ajax({'url': "/geojson/bjmtengah.json", 'async': false}).responseText); 
  }
  if(kecamatan.nama === 'Banjarmasin Timur'){
    var mapkec = L.map('mapkecamatan').setView([-3.323640, 114.623513], 13);
    var mapkec2 = L.map('mapkecamatan2').setView([-3.323640, 114.623513], 13);
    var jsonkec = JSON.parse($.ajax({'url': "/geojson/bjmtimur.json", 'async': false}).responseText); 
  }
  if(kecamatan.nama === 'Banjarmasin Barat'){
    var mapkec = L.map('mapkecamatan').setView([-3.317251, 114.573746], 13);
    var mapkec2 = L.map('mapkecamatan2').setView([-3.317251, 114.573746], 13);
    var jsonkec = JSON.parse($.ajax({'url': "/geojson/bjmbarat.json", 'async': false}).responseText); 
  }
  if(kecamatan.nama === 'Banjarmasin Selatan'){
    var mapkec = L.map('mapkecamatan').setView([-3.346411, 114.583815], 13);
    var mapkec2 = L.map('mapkecamatan2').setView([-3.346411, 114.583815], 12);
    var jsonkec = JSON.parse($.ajax({'url': "/geojson/bjmselatan.json", 'async': false}).responseText); 
  }
  if(kecamatan.nama === 'Banjarmasin Utara'){
    var mapkec = L.map('mapkecamatan').setView([-3.291572, 114.598542], 13);
    var mapkec2 = L.map('mapkecamatan2').setView([-3.291572, 114.598542], 13);
    var jsonkec = JSON.parse($.ajax({'url': "/geojson/bjmutara.json", 'async': false}).responseText); 
  }

  console.log(kelurahan);
  const features = jsonkec?.features || []
   features.map(f => {
    const findKelurahan = kelurahan.find(k => k.nama == f.properties.Nama)
    if (findKelurahan) f.properties.kelurahan = findKelurahan
   })

   jsonkec.features = features

  L.geoJson(jsonkec,{
          onEachFeature:function(feature, layer){
            layer.bindPopup(feature.properties.Nama);
          }
        }).addTo(mapkec);

        // console.log([kelurahan, jsonkec]);
  L.geoJson(jsonkec,{
          onEachFeature:function(feature, layer){
            const title = feature.properties.Nama
            const value = Number.parseFloat(feature.properties?.kelurahan?.jumlahpenduduk).toFixed(0).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
            
            layer.bindPopup(`${title} <br/>${value} Jiwa`);
          }
        }).addTo(mapkec2);

  var layerMapkec = L.tileLayer('https://{s}.tile.jawg.io/jawg-dark/{z}/{x}/{y}{r}.png?access-token={accessToken}', {
    attribution: '<a href="http://jawg.io" title="Tiles Courtesy of Jawg Maps" target="_blank">&copy; <b>Jawg</b>Maps</a> &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
    minZoom: 0,
    maxZoom: 22,
    subdomains: 'abcd',
    accessToken: 'eRFCsGIiHUoMtLKDSNdmhI2pONyzAYl0mH7qe2PtDlC6gYUR3teEbt9GaQCHjq1r'
  }).addTo(mapkec);
  
  const elements = [
    {
      name: "Banjarmasin Tengah",
      view: [-3.318060, 114.589410],
      zoom: 13,
      geojson: "/geojson/bjmtengah.json"
    },
    {
      name: "Banjarmasin Timur",
      view: [-3.323640, 114.623513],
      zoom: 13,
      geojson: "/geojson/bjmtimur.json"
    },
    {
      name: "Banjarmasin Barat",
      view: [-3.317251, 114.573746],
      zoom: 13,
      geojson: "/geojson/bjmbarat.json"
    },
    {
      name: "Banjarmasin Selatan",
      view: [-3.346411, 114.583815],
      zoom: 13,
      geojson: "/geojson/bjmselatan.json"
    },
    {
      name: "Banjarmasin Utara",
      view: [-3.291572, 114.598542],
      zoom: 13,
      geojson: "/geojson/bjmutara.json"
    }
  ]

  dataAttribut.forEach(data => {
    console.log({data});
    const element = elements.find(e => e.name === kecamatan.nama)
    const map = L.map('map'+data.id).setView(element.view, element.zoom);
    const json = JSON.parse($.ajax({'url': element.geojson, 'async': false}).responseText); 
    const features = json.features
    features.map(f => {
      const findKelurahan = kelurahan.find(k => k.nama === f.properties.Nama)
      f.properties.kelurahan = findKelurahan
    })
    json.features = features

    L.geoJson(json,{
      onEachFeature:function(feature, layer){
        const dataKelurahan = feature.properties?.kelurahan || {}
        const count = dataKelurahan[data.deskripsi] || 0
        layer.bindPopup(`${count} ${feature.properties.Nama}`);
      }
    }).addTo(map);
  })
  
  // dataAttribut.forEach(element => {

  //   if(kecamatan.nama === 'Banjarmasin Tengah'){
  //     var map = L.map('map'+element.id).setView([-3.318060, 114.589410], 14);
  //     var json = JSON.parse($.ajax({'url': "/geojson/bjmtengah.json", 'async': false}).responseText); 
  //   }

  //   if(kecamatan.nama === 'Banjarmasin Timur'){
  //     var map = L.map('map'+element.id).setView([-3.323640, 114.623513], 13);
  //     var json = JSON.parse($.ajax({'url': "/geojson/bjmtimur.json", 'async': false}).responseText); 
  //   }

  //   if(kecamatan.nama === 'Banjarmasin Barat'){
  //     var map = L.map('map'+element.id).setView([-3.317251, 114.573746], 13);
  //     var json = JSON.parse($.ajax({'url': "/geojson/bjmbarat.json", 'async': false}).responseText); 
  //   }

  //   if(kecamatan.nama === 'Banjarmasin Selatan'){
  //     var map = L.map('map'+element.id).setView([-3.346411, 114.583815], 12);
  //     var json = JSON.parse($.ajax({'url': "/geojson/bjmselatan.json", 'async': false}).responseText); 
  //   }

  //   if(kecamatan.nama === 'Banjarmasin Utara'){
  //     var map = L.map('map'+element.id).setView([-3.291572, 114.598542], 13);
  //     var json = JSON.parse($.ajax({'url': "/geojson/bjmutara.json", 'async': false}).responseText); 
  //   }

  //   L.geoJson(json,{
  //     onEachFeature:function(feature, layer){
  //       layer.bindPopup(feature.properties.Nama);
  //     }
  //   }).addTo(map);
  // });
  
      
    
</script>
</body>

</html>
