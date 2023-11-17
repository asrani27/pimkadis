<?php

namespace App\Http\Controllers;

use App\Models\Attribut;
use App\Models\Kecamatan;
use App\Models\Kelurahan;
use Illuminate\Http\Request;
use App\Models\Attribut_Kecamatan;

class FrontController extends Controller
{
    public function index()
    {
        return view('beranda');
    }

    public function webgis()
    {
        $kecamatan = Kecamatan::get();
        $kelurahan = Kelurahan::get();
        $attribut = Attribut::with('tagging')->where('tag', 'Y')->get();
        return view('webgis', compact('kecamatan', 'kelurahan', 'attribut'));
    }
    public function compare()
    {
        $kecamatan = Kecamatan::get();
        $compareKecamatan = null;
        $data = null;
        //dd('d');
        return view('compare2', compact('kecamatan', 'compareKecamatan', 'data'));
    }
    public function byKecamatan()
    {
        $kecamatan = Kecamatan::get();
        $compareKecamatan = null;
        $data = null;
        //dd('d');
        return view('compare_kecamatan', compact('kecamatan', 'compareKecamatan', 'data'));
    }

    public function byKelurahan()
    {
        $kelurahan = Kelurahan::get();
        $compareKelurahan = null;
        $data = null;
        //dd('d');
        return view('compare_kelurahan', compact('kelurahan', 'compareKelurahan', 'data'));
    }
    public function profilwilayah()
    {
        $kecamatan = Kecamatan::get();

        return view('profil_wilayah', compact('kecamatan'));
    }
    public function detailwilayah($id)
    {
        $detail = Kecamatan::find($id);
        $attribut_id = Attribut::where('profil', 'Y')->get()->pluck('id');

        $attribut = Attribut_Kecamatan::where('kecamatan_id', $id)->whereIn('attribut_id', $attribut_id)->get();

        return view('detail_wilayah', compact('detail', 'attribut'));
    }
    public function chart()
    {
        return view('chart');
    }
    public function login()
    {
        return view('login');
    }

    public function compareKecamatan(Request $req)
    {
        //dd(Kecamatan::whereIn('id', [1, 2])->get());
        //$integerIDs = array_map('intval', explode(',', $req->kecamatan_id));
        $id = array();
        foreach ($req->kecamatan_id as $key => $item) {
            array_push($id, (int)$item);
        }

        $kecamatan = Kecamatan::get();
        $kecamatan_id = Kecamatan::whereIn('id', $id)->get();
        $data = Attribut::get()->map(function ($item) use ($kecamatan_id) {
            $item->kecamatan = $kecamatan_id;
            return $item;
        });
        //dd($data);
        $compareKecamatan = 'ok';
        $req->flash();
        return view('compare_kecamatan', compact('kecamatan', 'compareKecamatan', 'data', 'kecamatan_id'));
    }

    public function compareKelurahan(Request $req)
    {
        $id = array();
        foreach ($req->kelurahan_id as $key => $item) {
            array_push($id, (int)$item);
        }

        $kelurahan = Kelurahan::get();
        $kelurahan_id = Kelurahan::whereIn('id', $id)->get();
        $data = Attribut::get()->map(function ($item) use ($kelurahan_id) {
            $item->kelurahan = $kelurahan_id;
            return $item;
        });
        //dd($data);
        $compareKelurahan = 'ok';
        $req->flash();
        return view('compare_kelurahan', compact('kelurahan', 'compareKelurahan', 'data', 'kelurahan_id'));
    }
}
