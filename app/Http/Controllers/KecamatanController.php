<?php

namespace App\Http\Controllers;

use App\Models\Attribut;
use App\Models\Attribut_Kecamatan;
use App\Models\Kecamatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

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
        $check = Kecamatan::where('nama', $req->kecamatan)->first();
        if ($check == null) {
            $n = new Kecamatan;
            $n->nama = $req->nama;
            $n->lat = $req->lat;
            $n->long = $req->long;
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
        $kecamatan->update([
            'nama' => $req->nama,
            'lat' => $req->lat,
            'long' => $req->long,
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
