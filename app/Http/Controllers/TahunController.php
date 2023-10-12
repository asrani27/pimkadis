<?php

namespace App\Http\Controllers;

use App\Models\Tahun;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class TahunController extends Controller
{
    public function index()
    {
        $data = Tahun::paginate(15);
        return view('superadmin.tahun.index', compact('data'));
    }

    public function create()
    {
        return view('superadmin.tahun.create');
    }
    public function store(Request $req)
    {
        $check = Tahun::where('tahun', $req->tahun)->first();
        if ($check == null) {
            $n = new Tahun;
            $n->tahun = $req->tahun;
            $n->save();

            Session::flash('success', 'Berhasil Di Simpan');
            return redirect('/superadmin/tahun');
        } else {
            Session::flash('error', 'Tahun Sudah ada');
            return back();
        }
    }
    public function edit($id)
    {
        $data = Tahun::find($id);
        return view('superadmin.tahun.edit', compact('data'));
    }
    public function update(Request $req, $id)
    {
        $tahun = Tahun::find($id);
        if ($req->password == null) {
            $tahun->update(['tahun' => $req->tahun]);
        } else {
            $tahun->update(['tahun' => $req->tahun]);
        }
        Session::flash('success', 'Berhasil Di update');
        return redirect('/superadmin/tahun');
    }
    public function delete($id)
    {
        Tahun::find($id)->delete();
        Session::flash('success', 'Berhasil Di hapus');
        return back();
    }
}
