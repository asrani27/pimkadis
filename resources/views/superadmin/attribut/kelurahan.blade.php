@extends('layouts.app')
@push('css')
    


@endpush
@section('content')
<section class="content">


    <a href="/superadmin/attribut" class="btn btn-sm btn-success "><i class="fa fa-arrow-left"></i> Kembali</a>
    
   <div class="row">
    <div class="col-md-12">
        <div class="box box">
            <div class="box-header with-border">
              <h3 class="box-title"><i class="fa fa-clipboard"></i> Edit {{$data->nama}}</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            
            <form class="form-horizontal" action="/superadmin/attribut/kelurahan/{{$data->id}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="box-body">
                  <div class="form-group">
                    
                    @foreach ($kelurahan as $item)
                        
                    <label for="inputEmail3" class="col-sm-2 control-label">Kel : {{$item->nama}}</label>
                    <div class="col-sm-10">
                      <input type="hidden" name="kelurahan[]" class="form-control" value="{{$item->id}}" required>
                      <input type="text" name="nilai[]" class="form-control" value="{{$item->value}}" required>
                    </div>
                    @endforeach
                  </div>
                  
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                      <button type="submit" class="btn btn-success btn-block"><i class="fa fa-save"></i> Update</button>
                      <a href="/superadmin/kecamatan" class="btn bg-gray btn-block"><i class="fa fa-arrow-left"></i> Kembali</a>
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

