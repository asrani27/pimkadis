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

  <!-- IziToast -->
  <link rel="stylesheet" href="/notif/dist/css/iziToast.min.css">
  <script src="/notif/dist/js/iziToast.min.js" type="text/javascript"></script>
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
<style>
  body {
background: linear-gradient(-45deg, #bff8cb, #6ae4f7, #f8fafa, #06fac1);
background-size: 400% 400%;
animation: gradient 10s ease infinite;
height: 100vh;
}

@keyframes gradient {
0% {
  background-position: 0% 50%;
}
50% {
  background-position: 100% 50%;
}
100% {
  background-position: 0% 50%;
}
}

</style>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-black-light layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container-fluid"style="box-shadow: 2px 2px 10px 10px rgba(0,0,0,.2);border-top-color: #37517e;">
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
    <div class="container">
      
      <!-- Main content -->
      <section class="content">
        
        <div class="row">
          <div class="col-md-2">
          </div>
          <div class="col-md-8">
            <div class="text-center"><br/><br/><br/><br/><br/><br/>
            </div>
            
            <div class="box box-warning" style="box-shadow: 2px 2px 10px 10px rgba(0,0,0,.2);border-top-color: #37517e;">
              {{-- <div class="box-header with-border text-center">
                <h3 class="box-title">BASIC DATA KEPEGAWAIAN ONLINE</h3>
      
              </div> --}}
              <form role="form" class="form-horizontal" method="post" action="/login">
                @csrf
              <div class="box-body">
                <div class="row">
                  <div class="col-sm-6">

                    <div class="description-block border-right">
                      <br/><br/>
                      <img src="/logo/tb.png" width="70px" >
                      <h1 style="font-family: Arial, Helvetica, sans-serif"><strong>TERAS DATA BERBAGI</strong></h1>
                      
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="box-body">
                      <h1 class="text-center" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">LOGIN</h1>
                      
                      
                      <div class="form-group">
                        <label >Username</label>
                        <input type="text" class="form-control" name="username" value="{{old('username')}}" placeholder="Username">
                      </div>
                      <div class="form-group">
                        <label >Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                      </div>
                      <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block" style="background-color: #37517e;"><i class="fa fa-sign-in"></i> Masuk</button>
                        
                      </div>
                    </div>
                

                  </div>
                </div>
              </div>
              
              </form>
            </div>
          </div>
          <div class="col-md-2">
          </div>
        </div>
        
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
<!-- SlimScroll -->
<script src="/assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/assets/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->

<script type="text/javascript">
  @include('layouts.notif')
</script>


</body>

</html>
