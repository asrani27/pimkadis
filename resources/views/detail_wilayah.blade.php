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
          <div class="col-md-4">
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
                <div class="col-md-12 text-center bg-green-gradient">
                    <h1>{{$detail->nama}}</h1>
                    <img src="/storage/{{$detail->image2}}" width="60%" >
                    <h3>JUMLAH PENDUDUK</h3>
                    <h2>{{number_format($attribut->where('nama','Jumlah Penduduk')->first()->value)}}</h2>
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
          <div class="col-md-8">
            <div class="box">
              <!-- /.box-header -->
              <form method="post" action="/compare/kecamatan">
                @csrf
              <div class="box-body no-padding">
                  
                  <div class="col-md-12 text-center">
                      <img src="/storage/{{$detail->image1}}" width="100%">
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
            @foreach ($attribut as $item)
              <div class="col-md-4 ">
                <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">{{strtoupper($item->nama)}} </h3>
                </div>
                <div class="box-body bg-green-gradient">
                  <div class="col-md-7">
                    <h3 style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">{{strtoupper($item->deskripsi)}} {{$item->value == 0 ? '0' : number_format($item->value)}} {{$item->satuan}}</h3>
                    {{-- <h1 style="font-weight: bold">{{$item->value == 0 ? '0' : number_format($item->value)}} {{$item->satuan}}</h1> --}}
                    <table>
                    @foreach ($kelurahan as $item)
                    <tr>
                      <td>> {{$item->nama}}</td> 
                      <td>: 0</td>   
                    </tr>
                    @endforeach
                  </table>
                  </div>
                  <div class="col-md-5 text-right">
                    <img src="/storage/{{$detail->image2}}" width="100%" >
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

<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()
  });
</script>
<script>
 
  var chart = new CanvasJS.Chart("chartContainer", {
    animationEnabled: true,
    data: [{
      type: "pie",
      startAngle: 240,
      
      indexLabel: "{label} {y}",
      dataPoints: [
        {y: 5, label: "Banjarmasin Tengah"},
        {y: 7, label: "Banjarmasin Timur"},
        {y: 6, label: "Banjarmasin Selatan"},
        {y: 4, label: "Banjarmasin Utara"},
        {y: 7, label: "Banjarmasin Barat"}
      ]
    }]
  });
  chart.render();
  
  
  </script>
</body>

</html>
