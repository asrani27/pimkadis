<?php

namespace App\Http\Controllers;

use App\Models\Tpermohonan;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function superadmin()
    {
        return view('admin.home');
    }

    public function pemohon()
    {
        $permohonan = Tpermohonan::orderBy('id', 'DESC')->paginate(15);
        return view('pemohon.home', compact('permohonan'));
    }
}
