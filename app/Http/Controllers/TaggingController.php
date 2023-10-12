<?php

namespace App\Http\Controllers;

use App\Models\Tagging;
use App\Models\Attribut;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

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
        $data = Tagging::find($id);
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
        return redirect('/superadmin/tagging/attribut/' . $id);
    }
    public function update(Request $req, $id)
    {
        $kecamatan = Tagging::find($id);
        $kecamatan->update([
            'nama' => $req->nama,
            'lat' => $req->lat,
            'long' => $req->long,
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
