<?php

namespace App\Http\Controllers;

use App\Models\Attribut;
use App\Models\Kategori;
use App\Models\Kelurahan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class AttributController extends Controller
{
    public function index()
    {
        $data = Attribut::paginate(15);
        return view('superadmin.attribut.index', compact('data'));
    }

    public function create()
    {
        $kategori = Kategori::get();
        return view('superadmin.attribut.create', compact('kategori'));
    }
    public function store(Request $req)
    {
        $check = Attribut::where('nama', $req->attribut)->first();
        if ($check == null) {
            $n = new Attribut;
            $n->kategori_id = $req->kategori_id;
            $n->nama = $req->nama;
            $n->satuan = $req->satuan;
            $n->tag = $req->tag;
            $n->profil = $req->profil;
            $n->deskripsi = $req->deskripsi;
            $n->save();

            Session::flash('success', 'Berhasil Di Simpan');
            return redirect('/superadmin/attribut');
        } else {
            Session::flash('error', 'attribut Sudah ada');
            return back();
        }
    }
    public function edit($id)
    {
        $kategori = Kategori::get();
        $data = Attribut::find($id);

        return view('superadmin.attribut.edit', compact('data', 'kategori'));
    }
    public function update(Request $req, $id)
    {
        $attribut = Attribut::find($id);
        $attribut->update([
            'kategori_id' => $req->kategori_id,
            'nama' => $req->nama,
            'satuan' => $req->satuan,
            'tag' => $req->tag,
            'profil' => $req->profil,
            'deskripsi' => $req->deskripsi,
        ]);

        Session::flash('success', 'Berhasil Di update');
        return redirect('/superadmin/attribut');
    }
    public function delete($id)
    {
        Attribut::find($id)->delete();
        Session::flash('success', 'Berhasil Di hapus');
        return back();
    }
    public function kelurahan($id)
    {
        $kelurahan = Kelurahan::get();
        $data = Attribut::find($id);

        return view('superadmin.attribut.kelurahan', compact('data', 'kelurahan'));
    }
}
