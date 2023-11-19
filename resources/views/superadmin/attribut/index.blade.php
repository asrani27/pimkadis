@extends('layouts.app')
@push('css')
    
@endpush
@section('content')
<section class="content">
    <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><i class="fa fa-clipboard"></i> attribut</h3>
    
              <div class="box-tools">
                <a href="/superadmin/attribut/add" class="btn btn-sm btn-success "><i class="fa fa-plus-circle"></i> Tambah</a>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody>
                <tr>
                  <th class="text-center">No</th>
                  <th>Nama Attribut</th>
                  <th>Deskripsi</th>
                  <th>Satuan</th>
                  <th>Kategori</th>
                  <th>Show On Map</th>
                  <th>Show On Profil</th>
                  <th>Aksi</th>
                </tr>
                @foreach ($data as $key => $item)
                <tr>
                    <td class="text-center">{{$data->firstItem() + $key}}</td>
                    <td>{{$item->nama}}</td>
                    <td>{{$item->deskripsi}}</td>
                    <td>{{$item->satuan}}</td>
                    <td>{{$item->kategori->nama}}</td>
                    <td>{{$item->tag}}</td>
                    <td>{{$item->profil}}</td>
                    <td>
                        <a href="/superadmin/attribut/edit/{{$item->id}}" class="btn btn-xs btn-flat  btn-success"><i class="fa fa-edit"></i></a>
                        <a href="/superadmin/attribut/delete/{{$item->id}}"
                            onclick="return confirm('Yakin ingin di hapus');"
                            class="btn btn-xs btn-flat  btn-danger"><i class="fa fa-trash"></i></a>
                            <a href="/superadmin/attribut/kelurahan/{{$item->id}}" class="btn btn-xs btn-flat  btn-success"><i class="fa fa-building"></i> Kelurahan</a>
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

