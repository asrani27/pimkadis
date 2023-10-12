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
            
            <form class="form-horizontal" action="/superadmin/attribut/edit/{{$data->id}}" method="post">
                @csrf
                <div class="box-body">
                  
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Nama Kategori</label>
                  <div class="col-sm-10">
                    <select name="kategori_id" class="form-control" required>
                      <option value="">-pilih-</option>
                      @foreach ($kategori as $item)
                      <option value="{{$item->id}}" {{$data->kategori_id == $item->id ? 'selected':''}}>{{$item->nama}}</option>
                      @endforeach
                    </select>
                  </div>
                </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Nama Attribut</label>
                    <div class="col-sm-10">
                      <input type="text" name="nama" class="form-control" value="{{$data->nama}}" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Nama Satuan</label>
                    <div class="col-sm-10">
                      <input type="text" name="satuan" class="form-control" value="{{$data->satuan}}" required>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                      <button type="submit" class="btn btn-success btn-block"><i class="fa fa-save"></i> Update</button>
                      <a href="/superadmin/attribut" class="btn bg-gray btn-block"><i class="fa fa-arrow-left"></i> Kembali</a>
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


@endpush

