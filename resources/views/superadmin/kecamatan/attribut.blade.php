@extends('layouts.app')
@push('css')
    
@endpush
@section('content')
<section class="content">
    <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><i class="fa fa-clipboard"></i> Attribut Kecamatan {{$data->nama}}</h3>
    
              <div class="box-tools">
                <a href="/superadmin/kecamatan" class="btn btn-sm btn-default "><i class="fa fa-arrow-left"></i> Kembali</a>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody>
                <tr>
                  <th class="text-center">No</th>
                  <th>Attribut</th>
                  <th>Value</th>
                  <th>Satuan</th>
                </tr>
                @php
                    $no =1;
                @endphp
                <form method="post" action="/superadmin/kecamatan/attribut/{{$data->id}}">
                  @csrf
                @foreach ($attribut as $key => $item)
                <tr>
                    <td class="text-center">{{$no++}}</td>
                    <td>{{$item->nama}}</td>
                    <td>
                      <input type="hidden" name="attribut_id[]" value="{{$item->id}}">
                      <input type="text" class="form-control" name="value[]" value="{{$item->value}}">
                    </td>
                    <td>
                      <input type="text" class="form-control" value="{{$item->satuan}}" readonly>
                    </td>
                </tr>
                @endforeach
                <tr>
                  <td></td>
                  <td></td>
                  <td>
                    <button type="submit" class="btn btn-success btn-block"><i class="fa fa-save"></i> SIMPAN</button>
                  </td>
                </tr>
                </form>
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          
        </div>
    </div>
</section>


@endsection
@push('js')
<script>
  function hanyaAngka(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
     if (charCode > 31 && (charCode < 48 || charCode > 57))

      return false;
    return true;
  }
</script>
@endpush

