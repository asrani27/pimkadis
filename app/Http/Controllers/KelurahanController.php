<?php

namespace App\Http\Controllers;

use App\Models\Kecamatan;
use App\Models\Kelurahan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class KelurahanController extends Controller
{
    public function index()
    {
        $data = Kelurahan::paginate(15);
        return view('superadmin.kelurahan.index', compact('data'));
    }

    public function create()
    {
        $kecamatan = Kecamatan::get();
        return view('superadmin.kelurahan.create', compact('kecamatan'));
    }
    public function store(Request $req)
    {
        $check = Kelurahan::where('nama', $req->kelurahan)->first();
        if ($check == null) {
            $n = new Kelurahan;
            $n->kecamatan_id = $req->kecamatan_id;
            $n->nama = $req->nama;
            $n->lat = $req->lat;
            $n->long = $req->long;
            $n->save();

            Session::flash('success', 'Berhasil Di Simpan');
            return redirect('/superadmin/kelurahan');
        } else {
            Session::flash('error', 'kelurahan Sudah ada');
            return back();
        }
    }
    public function edit($id)
    {
        $kecamatan = Kecamatan::get();
        $data = Kelurahan::find($id);

        if ($data->lat == null) {
            $latlong = [
                'lat' => '-3.327653847548605',
                'lng' => '114.5884147286779'
            ];
        } else {
            $latlong = [
                'lat' => $data->lat,
                'lng' => $data->long
            ];
        }

        return view('superadmin.kelurahan.edit', compact('data', 'latlong', 'kecamatan'));
    }
    public function update(Request $req, $id)
    {
        $kelurahan = Kelurahan::find($id);

        $validator = Validator::make($req->all(), [
            'file'  => 'mimes:jpg,png,jpeg|max:1024',
        ]);

        if ($validator->fails()) {
            $req->flash();
            Session::flash('error', 'File harus Gambar dan Maks 1MB');
            return back();
        }

        $path = public_path('storage') . '/tagging';

        if ($req->file == null) {
            $filename = $kelurahan->file;
        } else {
            $file = $req->file('file');
            $ext = $req->file->getClientOriginalExtension();
            $filename = 'tagging' . uniqid() . '.' . $ext;
            $file->move($path, $filename);
        }

        $kelurahan->update([
            'kecamatan_id' => $req->kecamatan_id,
            'nama' => $req->nama,
            'lat' => $req->lat,
            'long' => $req->long,
            'file' => $filename,
        ]);

        Session::flash('success', 'Berhasil Di update');
        return redirect('/superadmin/kelurahan');
    }
    public function delete($id)
    {
        Kelurahan::find($id)->delete();
        Session::flash('success', 'Berhasil Di hapus');
        return back();
    }
}
