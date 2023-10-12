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
}
