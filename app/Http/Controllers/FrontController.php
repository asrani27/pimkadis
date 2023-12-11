<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Faq;
use App\Models\Attribut;
use App\Models\Kategori;
use App\Models\Kecamatan;
use App\Models\Kelurahan;
use Illuminate\Http\Request;
use App\Models\AttributKelurahan;
use App\Models\Attribut_Kecamatan;
use Spatie\Browsershot\Browsershot;

class FrontController extends Controller
{
    public function index()
    {
        return view('beranda');
    }

    public function faq()
    {
        $data = Faq::get();
        return view('faq', compact('data'));
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
        $kecamatan_id = [];

        return view('compare_kecamatan', compact('kecamatan', 'compareKecamatan', 'data', 'attribut', 'oldkecamatan', 'kecamatan_id'));
    }

    public function byKelurahan()
    {
        $kelurahan = Kelurahan::get();
        $compareKelurahan = null;
        $data = null;
        $attribut = Attribut::get();
        $oldkelurahan = null;
        $kelurahan_id = [];
        //dd('d');
        return view('compare_kelurahan', compact('kelurahan', 'compareKelurahan', 'data', 'attribut', 'kelurahan_id', 'oldkelurahan'));
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
        $kelurahan_id = $detail->kelurahan->pluck('id');

        $attribut = $attribut_id->map(function ($item) use ($id, $kelurahan_id) {
            $item->value = AttributKelurahan::whereIn('kelurahan_id', $kelurahan_id)->where('attribut_id', $item->id)->sum('value');
            $item->grafik = collect(Kelurahan::find($kelurahan_id)->toArray())->map(function ($item2) use ($item) {
                $data['y'] = AttributKelurahan::where('kelurahan_id', $item2['id'])->where('attribut_id', $item->id)->first() == null ? 1 : (int)AttributKelurahan::where('kelurahan_id', $item2['id'])->where('attribut_id', $item->id)->first()->value;
                $data['label'] = $item2['nama'];
                return $data;
            })->toArray();
            $item->max = max($item->grafik);
            $item->total = 0;
            foreach ($item->grafik as $key => $n) {
                $item->total += $n['y'];
            }
            if ($item->max['y'] == 0) {
                $item->persen = 0;
            } else {
                $item->persen = $item->max['y'] / $item->total  * 100;
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

        $laki_id = Attribut::where('nama', 'Jumlah Laki')->first()->id;
        $perempuan_id = Attribut::where('nama', 'Jumlah Perempuan')->first()->id;
        $kepadatan_id = Attribut::where('nama', 'Kepadatan Penduduk')->first()->id;
        $luas_id = Attribut::where('nama', 'Luas Wilayah')->first()->id;

        $jml_laki  = Attribut_Kecamatan::where('kecamatan_id', $id)->where('attribut_id', $laki_id)->first();
        $jml_perempuan = Attribut_Kecamatan::where('kecamatan_id', $id)->where('attribut_id', $perempuan_id)->first();
        $jml_kepadatan = Attribut_Kecamatan::where('kecamatan_id', $id)->where('attribut_id', $kepadatan_id)->first();
        $jml_luas = Attribut_Kecamatan::where('kecamatan_id', $id)->where('attribut_id', $luas_id)->first();

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

        return view('detail_wilayah', compact('id', 'detail', 'attribut', 'kelurahan', 'jumlah_penduduk', 'jml_laki', 'jml_perempuan', 'jml_kepadatan', 'jml_luas'));
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
        $kategori = Kategori::get();
        return view('chart', compact('attribut', 'kategori'));
    }

    public function tampilkanChart()
    {
        $kategori_id = request()->get('kategori');
        $jenis = request()->get('jenis');


        $kategori = Kategori::get();
        request()->flash();

        if ($jenis == 'pie') {

            $attribut = Kategori::find($kategori_id)->attribut->map(function ($item) {
                $item->grafik = collect(Kecamatan::get()->toArray())->map(function ($item2) use ($item) {
                    $data['label'] = $item2['nama'];
                    $data['x'] = 0;
                    $data['y'] = Attribut_Kecamatan::where('kecamatan_id', $item2['id'])->where('attribut_id', $item->id)->first() == null ? 1 : Attribut_Kecamatan::where('kecamatan_id', $item2['id'])->where('attribut_id', $item->id)->first()->value;
                    return $data;
                })->toArray();
                return $item;
            });
            return view('chart', compact('attribut', 'kategori'));
        } else {

            $attribut = Kategori::find($kategori_id)->attribut->map(function ($item) {
                $item->grafik = collect(Kecamatan::get()->toArray())->map(function ($item2) use ($item) {
                    $data['y'] = Attribut_Kecamatan::where('kecamatan_id', $item2['id'])->where('attribut_id', $item->id)->first() == null ? 1 : (int)Attribut_Kecamatan::where('kecamatan_id', $item2['id'])->where('attribut_id', $item->id)->first()->value;
                    $data['label'] = $item2['nama'];
                    return $data;
                })->toArray();
                return $item;
            });

            return view('chartbar', compact('attribut', 'kategori'));
        }
    }
    public function login()
    {
        return view('login');
    }
    public function pdf($id)
    {

        $filename = 'tdb' . Carbon::now()->format('Y-m-d H:i:s') . '.jpg';
        Browsershot::url('https://tdb.banjarmasinkota.go.id/profilwilayah/' . $id)
            ->setOption('landscape', true)
            ->windowSize(1840, 2160)
            ->waitUntilNetworkIdle()
            ->save($filename);
        $file = public_path() . "/" . $filename;

        return response()->download($file);
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
        $data = Attribut::where('id', $req->jenis)->get()->map(function ($item) use ($kecamatan_id) {
            $item->kecamatan = $kecamatan_id->map(function ($item2) use ($item) {
                $checkValue = Attribut_Kecamatan::where('kecamatan_id', $item2->id)->where('attribut_id', $item->id)->first();
                if ($checkValue == null) {
                    $item2->value = 0;
                } else {
                    $item2->value = $checkValue->value;
                }
                return $item2;
            });
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
        //dd($req->all(), $id);
        $oldkelurahan = collect($id);
        $kelurahan = Kelurahan::get();
        $kelurahan_id = Kelurahan::whereIn('id', $id)->get();
        // $data = Attribut::where('id', $req->jenis)->get()->map(function ($item) use ($kelurahan_id) {
        //     $item->kelurahan = $kelurahan_id;
        //     return $item;
        // });
        $data = Attribut::where('id', $req->jenis)->get()->map(function ($item) use ($kelurahan_id) {
            $item->kelurahan = $kelurahan_id->map(function ($item2) use ($item) {
                $item2->value = AttributKelurahan::where('kelurahan_id', $item2->id)->where('attribut_id', $item->id)->first()->value;
                return $item2;
            });
            return $item;
        });

        //dd($data, $kelurahan, $kelurahan_id);
        $compareKelurahan = 'ok';
        $req->flash();
        $attribut = Attribut::get();


        return view('compare_kelurahan', compact('kelurahan', 'compareKelurahan', 'data', 'kelurahan_id', 'oldkelurahan', 'attribut'));
    }
}
