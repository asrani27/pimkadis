@extends('layouts.app')
@push('css')
    
@endpush
@section('content')
<section class="content">
    <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><i class="fa fa-clipboard"></i> kecamatan</h3>
    
              <div class="box-tools">
                <a href="/superadmin/kecamatan/add" class="btn btn-sm btn-success "><i class="fa fa-plus-circle"></i> Tambah</a>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody>
                <tr>
                  <th class="text-center">No</th>
                  <th>kecamatan</th>
                  <th>Aksi</th>
                </tr>
                @foreach ($data as $key => $item)
                <tr>
                    <td class="text-center">{{$data->firstItem() + $key}}</td>
                    <td>{{$item->nama}}</td>
                    <td>
                      <a href="/superadmin/kecamatan/attribut/{{$item->id}}" class="btn btn-xs  btn-success"><i class="fa fa-edit"></i> Nilai Attribut</a>
                        <a href="/superadmin/kecamatan/edit/{{$item->id}}" class="btn btn-xs  btn-success"><i class="fa fa-edit"></i></a>
                        <a href="/superadmin/kecamatan/delete/{{$item->id}}"
                            onclick="return confirm('Yakin ingin di hapus');"
                            class="btn btn-xs  btn-danger"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
                @endforeach
                
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          {{$data->links()}}
        </div>
    </div>
</section>


@endsection
@push('js')

@endpush

