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
        $attribut_id = Attribut::where('profil', 'Y')->get();
        $attribut = $attribut_id->map(function ($item) use ($id) {
            $check = Attribut_Kecamatan::where('kecamatan_id', $id)->where('attribut_id', $item->id)->first();
            if ($check == null) {
                $item->value = 0;
            } else {
                $item->value = $check->value;
            }
            return $item;
        });

        $kelurahan = $detail->kelurahan;

        return view('detail_wilayah', compact('detail', 'attribut', 'kelurahan'));
    }
    public function chart()
    {

        $data = array();
        $attribut = Attribut::where('profil', 'Y')->get()->map(function ($item) {
            $item->grafik = collect(Kecamatan::get()->toArray())->map(function ($item2) use ($item) {
                $data['label'] = $item2['nama'];
                $data['x'] = 0;
                $data['y'] = Attribut_Kecamatan::where('kecamatan_id', $item2['id'])->where('attribut_id', $item->id)->first() == null ? 1 : Attribut_Kecamatan::where('kecamatan_id', $item2['id'])->where('attribut_id', $item->id)->first()->value;
                return $data;
            })->toArray();
            return $item;
        });

        // $attribut = $attribut_id->map(function ($item) use ($id) {
        //     $check = Attribut_Kecamatan::where('kecamatan_id', $id)->where('attribut_id', $item->id)->first();
        //     if ($check == null) {
        //         $item->value = 0;
        //     } else {
        //         $item->value = $check->value;
        //     }
        //     return $item;
        // });
        return view('chart', compact('attribut'));
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
        //dd($data, $kelurahan, $kelurahan_id);
        $compareKelurahan = 'ok';
        $req->flash();


        return view('compare_kelurahan', compact('kelurahan', 'compareKelurahan', 'data', 'kelurahan_id'));
    }
}
