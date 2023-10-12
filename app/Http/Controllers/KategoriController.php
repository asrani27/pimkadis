<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class KategoriController extends Controller
{
    public function index()
    {
        $data = Kategori::paginate(15);
        return view('superadmin.kategori.index', compact('data'));
    }

    public function create()
    {
        return view('superadmin.kategori.create');
    }
    public function store(Request $req)
    {
        $check = Kategori::where('nama', $req->nama)->first();
        if ($check == null) {
            $n = new Kategori;
            $n->nama = $req->nama;
            $n->save();

            Session::flash('success', 'Berhasil Di Simpan');
            return redirect('/superadmin/kategori');
        } else {
            Session::flash('error', 'kategori Sudah ada');
            return back();
        }
    }
    public function edit($id)
    {
        $data = Kategori::find($id);
        return view('superadmin.kategori.edit', compact('data'));
    }
    public function update(Request $req, $id)
    {
        $kategori = Kategori::find($id);
        if ($req->password == null) {
            $kategori->update(['nama' => $req->nama]);
        } else {
            $kategori->update(['nama' => $req->nama]);
        }
        Session::flash('success', 'Berhasil Di update');
        return redirect('/superadmin/kategori');
    }
    public function delete($id)
    {
        Kategori::find($id)->delete();
        Session::flash('success', 'Berhasil Di hapus');
        return back();
    }
}
