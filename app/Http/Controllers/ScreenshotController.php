<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Spatie\Browsershot\Browsershot;

class ScreenshotController extends Controller
{
    public function index(Request $request)
    {
        $filename = 'tdb' . Carbon::now()->format('Y-m-d') . '.jpg';
        Browsershot::url('https://tdb.banjarmasinkota.go.id/profilwilayah/1')
            ->setOption('landscape', true)
            ->windowSize(1840, 2160)
            ->waitUntilNetworkIdle()
            ->save($filename);

        dd("Done");
    }
}
