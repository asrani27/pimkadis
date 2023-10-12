<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class LogoutController extends Controller
{
    public function logout()
    {
        Auth::logout();
        Session::flash('success', 'Anda Telah Keluar Dari Aplikasi');
        return redirect('/');
    }
}
