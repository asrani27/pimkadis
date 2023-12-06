<?php

namespace App\Http\Controllers;

use App\Models\Faq;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class FaqController extends Controller
{
    public function index()
    {
        $data = Faq::paginate(15);
        return view('superadmin.faq.index', compact('data'));
    }

    public function create()
    {
        return view('superadmin.faq.create');
    }
    public function store(Request $req)
    {
        $check = Faq::where('pertanyaan', $req->pertanyaan)->first();
        if ($check == null) {
            $n = new Faq;
            $n->pertanyaan = $req->pertanyaan;
            $n->jawaban = $req->jawaban;
            $n->save();

            Session::flash('success', 'Berhasil Di Simpan');
            return redirect('/superadmin/faq');
        } else {
            Session::flash('error', 'pertanyaan Sudah ada');
            return back();
        }
    }
    public function edit($id)
    {
        $data = Faq::find($id);
        return view('superadmin.faq.edit', compact('data'));
    }
    public function update(Request $req, $id)
    {
        $faq = Faq::find($id);

        $faq->update([
            'pertanyaan' => $req->pertanyaan,
            'jawaban' => $req->jawaban,
        ]);

        Session::flash('success', 'Berhasil Di update');
        return redirect('/superadmin/faq');
    }
    public function delete($id)
    {
        Faq::find($id)->delete();
        Session::flash('success', 'Berhasil Di hapus');
        return back();
    }
}
