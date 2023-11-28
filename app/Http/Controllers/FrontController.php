<?php

namespace App\Http\Controllers;

use App\Models\Attribut;
use App\Models\Kecamatan;
use App\Models\Kelurahan;
use Illuminate\Http\Request;
use App\Models\Attribut_Kecamatan;
use App\Models\AttributKelurahan;

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
        $attribut = Attribut::get();
        $oldkecamatan = null;

        return view('compare_kecamatan', compact('kecamatan', 'compareKecamatan', 'data', 'attribut', 'oldkecamatan'));
    }

    public function byKelurahan()
    {
        $kelurahan = Kelurahan::get();
        $compareKelurahan = null;
        $data = null;
        $jenis = Attribut::get();
        //dd('d');
        return view('compare_kelurahan', compact('kelurahan', 'compareKelurahan', 'data', 'jenis'));
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
        $attribut_id = Attribut::where('nama', 'Jumlah Penduduk')->first()->id;
        $sekolah_id = Attribut::where('nama', 'Jumlah Sekolah')->first()->id;
        $posyandu_id = Attribut::where('nama', 'Posyandu')->first()->id;
        $izin_id = Attribut::where('nama', 'Izin Usaha')->first()->id;
        $stunting_id = Attribut::where('nama', 'Kasus Stunting')->first()->id;
        $tps_id = Attribut::where('nama', 'Jumlah Tempat Pembuangan Sampah (TPS)')->first()->id;
        $rtlh_id = Attribut::where('nama', 'Rumah Tidak Layak huni')->first()->id;




        $jumlah_penduduk = Attribut_Kecamatan::where('kecamatan_id', $id)->where('attribut_id', $attribut_id)->first();
        $kelurahan_id = $kelurahan->pluck('id')->toArray();

        $kelurahan->map(function ($item) use ($attribut_id, $sekolah_id, $posyandu_id, $izin_id, $stunting_id, $tps_id, $rtlh_id) {
            $checkjumlahpenduduk = AttributKelurahan::where('kelurahan_id', $item->id)->where('attribut_id', $attribut_id)->first();

            $sekolah = AttributKelurahan::where('kelurahan_id', $item->id)->where('attribut_id', $sekolah_id)->first();
            $posyandu = AttributKelurahan::where('kelurahan_id', $item->id)->where('attribut_id', $posyandu_id)->first();
            $izin = AttributKelurahan::where('kelurahan_id', $item->id)->where('attribut_id', $izin_id)->first();
            $stunting = AttributKelurahan::where('kelurahan_id', $item->id)->where('attribut_id', $stunting_id)->first();
            $tps = AttributKelurahan::where('kelurahan_id', $item->id)->where('attribut_id', $tps_id)->first();
            $rtlh = AttributKelurahan::where('kelurahan_id', $item->id)->where('attribut_id', $rtlh_id)->first();

            if ($checkjumlahpenduduk == null) {
                $item->jumlahpenduduk = 0;
            } else {
                $item->jumlahpenduduk = (int)$checkjumlahpenduduk->value;
            }
            if ($sekolah == null) {
                $item->sekolah = 0;
            } else {
                $item->sekolah = (int)$sekolah->value;
            }
            if ($posyandu == null) {
                $item->posyandu = 0;
            } else {
                $item->posyandu = (int)$posyandu->value;
            }
            if ($izin == null) {
                $item->izin = 0;
            } else {
                $item->izin = (int)$izin->value;
            }
            if ($stunting == null) {
                $item->stunting = 0;
            } else {
                $item->stunting = (int)$stunting->value;
            }
            if ($tps == null) {
                $item->tps = 0;
            } else {
                $item->tps = (int)$tps->value;
            }
            if ($rtlh == null) {
                $item->rtlh = 0;
            } else {
                $item->rtlh = (int)$rtlh->value;
            }
            return $item;
        });
        //dd($kelurahan);
        return view('detail_wilayah', compact('detail', 'attribut', 'kelurahan', 'jumlah_penduduk'));
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

        $id = array();

        foreach ($req->kecamatan_id as $key => $item) {
            array_push($id, (int)$item);
        }

        $oldkecamatan = collect($id);

        $kecamatan = Kecamatan::get();
        $kecamatan_id = Kecamatan::whereIn('id', $id)->get();
        // $data = Kecamatan::whereIn('id', $id)->get()->map(function ($item) use ($kecamatan_id) {
        //     $item->kecamatan = $kecamatan_id;
        //     return $item;
        // });

        $data = Attribut::where('id', $req->jenis)->get()->map(function ($item) use ($kecamatan_id) {
            $item->kecamatan = $kecamatan_id;
            return $item;
        });

        $dataPeta = Kecamatan::whereIn('id', $id)->get()->map(function ($item) use ($req) {
            $item->jenis = $req->jenis;
            $check = Attribut_Kecamatan::where('attribut_id', $req->jenis)->where('kecamatan_id', $item->id)->first();
            if ($check == null) {
                $item->value = 0;
            } else {
                $item->value = Attribut_Kecamatan::where('attribut_id', $req->jenis)->where('kecamatan_id', $item->id)->first()->value;
            }
            return $item;
        });

        $compareKecamatan = 'ok';
        $req->flash();
        $attribut = Attribut::get();
        return view('compare_kecamatan', compact('kecamatan', 'compareKecamatan', 'data', 'kecamatan_id', 'attribut', 'oldkecamatan'));
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
