<?php

namespace App\Http\Controllers;

use App\Models\Attribut;
use App\Models\Kecamatan;
use Illuminate\Http\Request;
use App\Models\Attribut_Kecamatan;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class KecamatanController extends Controller
{
    public function index()
    {
        $data = Kecamatan::paginate(15);
        return view('superadmin.kecamatan.index', compact('data'));
    }

    public function create()
    {
        return view('superadmin.kecamatan.create');
    }
    public function store(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'image1' => 'mimes:png,jpg,jpeg|max:2048',
            'image2' => 'mimes:png,jpg,jpeg|max:2048'
        ]);

        if ($validator->fails()) {
            toastr()->error('File Harus Gambar Dan Max 2MB');
            return back();
        }

        if ($req->hasFile('image1')) {
            $filename1 = $req->image1->getClientOriginalName();
            $filename1 = date('d-m-Y-') . rand(1, 9999) . $filename1;
            $req->image1->storeAs('/public', $filename1);
        } else {
            $filename1 = null;
        }

        if ($req->hasFile('image2')) {
            $filename2 = $req->image2->getClientOriginalName();
            $filename2 = date('d-m-Y-') . rand(1, 9999) . $filename2;
            $req->image2->storeAs('/public', $filename2);
        } else {
            $filename2 = null;
        }

        $check = Kecamatan::where('nama', $req->kecamatan)->first();
        if ($check == null) {
            $n = new Kecamatan;
            $n->nama = $req->nama;
            $n->lat = $req->lat;
            $n->long = $req->long;
            $n->image1 = $filename1;
            $n->image2 = $filename2;
            $n->save();

            Session::flash('success', 'Berhasil Di Simpan');
            return redirect('/superadmin/kecamatan');
        } else {
            Session::flash('error', 'kecamatan Sudah ada');
            return back();
        }
    }
    public function edit($id)
    {
        $data = Kecamatan::find($id);

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

        return view('superadmin.kecamatan.edit', compact('data', 'latlong'));
    }
    public function attribut($id)
    {
        $data = Kecamatan::find($id);
        $attribut = Attribut::get()->map(function ($item) use ($id) {
            $value = Attribut_Kecamatan::where('kecamatan_id', $id)->where('attribut_id', $item->id)->first();
            if ($value == null) {
                $item->value = null;
            } else {
                $item->value = $value->value;
            }
            return $item;
        });

        return view('superadmin.kecamatan.attribut', compact('data', 'attribut', 'id'));
    }

    public function storeAttribut(Request $req, $id)
    {
        foreach ($req->attribut_id as $key => $item) {
            $check = Attribut_Kecamatan::where('attribut_id', $item)->where('kecamatan_id', $id)->first();
            if ($check == null) {
                $n = new Attribut_Kecamatan;
                $n->attribut_id = $item;
                $n->kecamatan_id = $id;
                $n->value = $req->value[$key];
                $n->save();
            } else {
                $update = $check;
                $update->value = $req->value[$key];
                $update->save();
            }
        }
        Session::flash('success', 'Berhasil Di simpan');
        return redirect('/superadmin/kecamatan/attribut/' . $id);
    }
    public function update(Request $req, $id)
    {

        $kecamatan = Kecamatan::find($id);
        $validator = Validator::make($req->all(), [
            'image1' => 'mimes:png,jpg,jpeg|max:2048',
            'image2' => 'mimes:png,jpg,jpeg|max:2048',
            'file' => 'mimes:png,jpg,jpeg|max:1024'
        ]);

        if ($validator->fails()) {
            toastr()->error('File Harus Gambar Dan Max 2MB');
            return back();
        }

        if ($req->hasFile('image1')) {
            $filename1 = $req->image1->getClientOriginalName();
            $filename1 = date('d-m-Y-') . rand(1, 9999) . $filename1;
            $req->image1->storeAs('/public', $filename1);
        } else {
            $filename1 = $kecamatan->image1;
        }

        if ($req->hasFile('image2')) {
            $filename2 = $req->image2->getClientOriginalName();
            $filename2 = date('d-m-Y-') . rand(1, 9999) . $filename2;
            $req->image2->storeAs('/public', $filename2);
        } else {
            $filename2 = $kecamatan->image2;
        }

        if ($req->hasFile('file')) {
            $filename3 = $req->file->getClientOriginalName();
            $filename3 = date('d-m-Y-') . rand(1, 9999) . $filename3;
            $req->file->storeAs('/public/tagging', $filename3);
        } else {
            $filename3 = $kecamatan->file;
        }

        $kecamatan->update([
            'nama' => $req->nama,
            'lat' => $req->lat,
            'long' => $req->long,
            'alamat' => $req->alamat,
            'telp' => $req->telp,
            'image1' => $filename1,
            'image2' => $filename2,
            'file' => $filename3,
        ]);

        Session::flash('success', 'Berhasil Di update');
        return redirect('/superadmin/kecamatan');
    }
    public function delete($id)
    {
        Kecamatan::find($id)->delete();
        Session::flash('success', 'Berhasil Di hapus');
        return back();
    }
}
