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
<style>
    body{

        margin: 0;
        padding: 0;
    }
    #map { 
        height: 500px; 
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
                <select name="kecamatan_id[]" class="form-control select2" multiple="multiple" data-placeholder="Select kecamatan"
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

      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Geospasial</h3>
        </div>
        <div class="box-body">
          <div class="row">
            <div id="map"></div>
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
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()
  });
</script>
<script>
 
 var mapkec = L.map('map').setView([-3.318060, 114.589410], 12);
 var jsonkec = JSON.parse($.ajax({'url': "/geojson/kecamatan.json", 'async': false}).responseText); 

 var layerMapkec = L.tileLayer('https://{s}.tile.jawg.io/jawg-dark/{z}/{x}/{y}{r}.png?access-token={accessToken}', {
    attribution: '<a href="http://jawg.io" title="Tiles Courtesy of Jawg Maps" target="_blank">&copy; <b>Jawg</b>Maps</a> &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
    minZoom: 0,
    maxZoom: 22,
    subdomains: 'abcd',
    accessToken: 'eRFCsGIiHUoMtLKDSNdmhI2pONyzAYl0mH7qe2PtDlC6gYUR3teEbt9GaQCHjq1r'
  }).addTo(mapkec);

 L.geoJson(jsonkec.data,{
          onEachFeature:function(feature, layer){
            layer.bindPopup('feature.properties.Nama');
          }
        }).addTo(mapkec);
  
  </script>
</body>

</html>
