@extends('layouts.app')
@push('css')
    
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
    integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
    crossorigin="" />
<style>
    #mapid {
        height: 380px;
    }
</style>
@endpush
@section('content')
<section class="content">
   <div class="row">
    <div class="col-md-12">
        <div class="box box">
            <div class="box-header with-border">
              <h3 class="box-title"><i class="fa fa-clipboard"></i> Edit</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            
            <form class="form-horizontal" action="/superadmin/kelurahan/edit/{{$data->id}}" method="post">
                @csrf
                <div class="box-body">
                  
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Nama Kecamatan</label>
                  <div class="col-sm-10">
                    <select name="kecamatan_id" class="form-control" required>
                      <option value="">-pilih-</option>
                      @foreach ($kecamatan as $item)
                      <option value="{{$item->id}}" {{$data->kecamatan_id == $item->id ? 'selected':''}}>{{$item->nama}}</option>
                      @endforeach
                    </select>
                  </div>
                </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Nama Kelurahan</label>
                    <div class="col-sm-10">
                      <input type="text" name="nama" class="form-control" value="{{$data->nama}}" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Tagging</label>
                    <div class="col-sm-10">
                      <div id="mapid"></div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Latitude </label>
                    <div class="col-sm-10">
                      <input type="text" name="lat" id="lat" value="{{$data->lat}}" class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Longitude</label>
                    <div class="col-sm-10">
                      <input type="text" name="long" id="long" value="{{$data->long}}" class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                      <button type="submit" class="btn btn-success btn-block"><i class="fa fa-save"></i> Update</button>
                      <a href="/superadmin/kelurahan" class="btn bg-gray btn-block"><i class="fa fa-arrow-left"></i> Kembali</a>
                    </div>
                  </div>
              </div>
            </form>
          </div>
    </div>
   </div>
    
</section>


@endsection
@push('js')

<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
    integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
    crossorigin=""></script>


<script>
    var latlng = {!!json_encode($latlong)!!}
    
    var map = L.map('mapid').setView(latlng, 14);
    googleStreets = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',{
        maxZoom: 20,
        subdomains:['mt0','mt1','mt2','mt3']
    }).addTo(map);
  
    L.marker([latlng.lat,latlng.lng]).addTo(map);  

    var theMarker = {};
    
    map.on('click', function(e) {
        
        document.getElementById("lat").value = e.latlng.lat;
        document.getElementById("long").value = e.latlng.lng;
        
        if (theMarker != undefined) {
            map.removeLayer(theMarker);
        };
        
        theMarker = L.marker([e.latlng.lat,e.latlng.lng]).addTo(map);  
    });
    
</script>
@endpush

