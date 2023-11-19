<?php

namespace App\Http\Controllers;

use App\Models\Tagging;
use App\Models\Attribut;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class TaggingController extends Controller
{
    public function index()
    {
        $data = Tagging::paginate(15);
        return view('superadmin.tagging.index', compact('data'));
    }

    public function create()
    {
        $attribut = Attribut::get();
        return view('superadmin.tagging.create', compact('attribut'));
    }
    public function store(Request $req)
    {
        $check = Tagging::where('nama', $req->nama)->first();
        if ($check == null) {
            $n = new Tagging;
            $n->attribut_id = $req->attribut_id;
            $n->nama = $req->nama;
            $n->lat = $req->lat;
            $n->long = $req->long;
            $n->save();

            Session::flash('success', 'Berhasil Di Simpan');
            return redirect('/superadmin/tagging');
        } else {
            Session::flash('error', 'nama Sudah ada');
            return back();
        }
    }
    public function edit($id)
    {
        $data = Tagging::find($id);

        $attribut = Attribut::get();
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

        return view('superadmin.tagging.edit', compact('data', 'latlong', 'attribut'));
    }

    public function update(Request $req, $id)
    {

        $tagging = Tagging::find($id);

        $validator = Validator::make($req->all(), [
            'file'  => 'mimes:jpg,png,jpeg|max:1024',
        ]);

        if ($validator->fails()) {
            $req->flash();
            Session::flash('error', 'File harus scan PDF dan Maks 1MB');
            return back();
        }

        $path = public_path('storage') . '/tagging';

        if ($req->file == null) {
            $filename = $tagging->file;
        } else {
            $file = $req->file('file');
            $ext = $req->file->getClientOriginalExtension();
            $filename = 'tagging' . uniqid() . '.' . $ext;
            $file->move($path, $filename);
        }

        $tagging->update([
            'nama' => $req->nama,
            'lat' => $req->lat,
            'long' => $req->long,
            'file' => $filename,
        ]);

        Session::flash('success', 'Berhasil Di update');
        return redirect('/superadmin/tagging');
    }
    public function delete($id)
    {
        Tagging::find($id)->delete();
        Session::flash('success', 'Berhasil Di hapus');
        return back();
    }
}
