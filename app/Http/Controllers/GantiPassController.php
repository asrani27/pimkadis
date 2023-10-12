<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GantiPassController extends Controller
{
    public function index()
    {
        return view('superadmin.gantipass');
    }
}
