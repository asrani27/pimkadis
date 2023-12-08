<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MapController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\TahunController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\TaggingController;
use App\Http\Controllers\AttributController;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\GantiPassController;
use App\Http\Controllers\KecamatanController;
use App\Http\Controllers\KelurahanController;
use App\Http\Controllers\ScreenshotController;
use App\Http\Controllers\SuperadminController;

Route::get('/', [FrontController::class, 'index']);
Route::get('/profilwilayah', [FrontController::class, 'profilwilayah']);
Route::get('/profilwilayah/{id}', [FrontController::class, 'detailwilayah']);
Route::get('/profilwilayah/{id}/pdf', [FrontController::class, 'pdf']);
Route::get('/webgis', [FrontController::class, 'webgis']);
Route::get('/compare', [FrontController::class, 'compare']);
Route::get('/chart', [FrontController::class, 'chart']);
Route::get('/faq', [FrontController::class, 'faq']);
Route::get('/chart/grafik', [FrontController::class, 'tampilkanChart']);
Route::get('/compare/kecamatan', function () {
    return redirect('/compare/bykecamatan');
});
Route::get('/compare/kelurahan', function () {
    return redirect('/compare/bykelurahan');
});

Route::get('screenshot', [ScreenshotController::class, 'index']);

Route::post('/compare/kecamatan', [FrontController::class, 'compareKecamatan']);
Route::post('/compare/kelurahan', [FrontController::class, 'compareKelurahan']);
Route::get('/compare/bykecamatan', [FrontController::class, 'byKecamatan']);
Route::get('/compare/bykelurahan', [FrontController::class, 'byKelurahan']);
Route::get('/login', [FrontController::class, 'login'])->name('login');
Route::post('login', [LoginController::class, 'login']);

Route::group(['middleware' => ['auth', 'role:superadmin']], function () {
    Route::prefix('superadmin')->group(function () {
        Route::get('beranda', [SuperadminController::class, 'index']);

        Route::get('tahun', [TahunController::class, 'index']);
        Route::get('tahun/add', [TahunController::class, 'create']);
        Route::post('tahun/add', [TahunController::class, 'store']);
        Route::get('tahun/edit/{id}', [TahunController::class, 'edit']);
        Route::post('tahun/edit/{id}', [TahunController::class, 'update']);
        Route::get('tahun/delete/{id}', [TahunController::class, 'delete']);

        Route::get('kecamatan', [KecamatanController::class, 'index']);
        Route::get('kecamatan/add', [KecamatanController::class, 'create']);
        Route::post('kecamatan/add', [KecamatanController::class, 'store']);
        Route::get('kecamatan/edit/{id}', [KecamatanController::class, 'edit']);
        Route::get('kecamatan/attribut/{id}', [KecamatanController::class, 'attribut']);
        Route::post('kecamatan/attribut/{id}', [KecamatanController::class, 'storeAttribut']);
        Route::post('kecamatan/edit/{id}', [KecamatanController::class, 'update']);
        Route::get('kecamatan/delete/{id}', [KecamatanController::class, 'delete']);

        Route::get('kelurahan', [KelurahanController::class, 'index']);
        Route::get('kelurahan/add', [KelurahanController::class, 'create']);
        Route::post('kelurahan/add', [KelurahanController::class, 'store']);
        Route::get('kelurahan/edit/{id}', [KelurahanController::class, 'edit']);
        Route::post('kelurahan/edit/{id}', [KelurahanController::class, 'update']);
        Route::get('kelurahan/delete/{id}', [KelurahanController::class, 'delete']);

        Route::get('kategori', [KategoriController::class, 'index']);
        Route::get('kategori/add', [KategoriController::class, 'create']);
        Route::post('kategori/add', [KategoriController::class, 'store']);
        Route::get('kategori/edit/{id}', [KategoriController::class, 'edit']);
        Route::post('kategori/edit/{id}', [KategoriController::class, 'update']);
        Route::get('kategori/delete/{id}', [KategoriController::class, 'delete']);

        Route::get('attribut', [AttributController::class, 'index']);
        Route::get('attribut/add', [AttributController::class, 'create']);
        Route::post('attribut/add', [AttributController::class, 'store']);
        Route::get('attribut/edit/{id}', [AttributController::class, 'edit']);
        Route::post('attribut/edit/{id}', [AttributController::class, 'update']);
        Route::get('attribut/delete/{id}', [AttributController::class, 'delete']);
        Route::get('attribut/kelurahan/{id}', [AttributController::class, 'kelurahan']);
        Route::post('attribut/kelurahan/{id}', [AttributController::class, 'storeKelurahan']);


        Route::get('tagging', [TaggingController::class, 'index']);
        Route::get('tagging/add', [TaggingController::class, 'create']);
        Route::post('tagging/add', [TaggingController::class, 'store']);
        Route::get('tagging/edit/{id}', [TaggingController::class, 'edit']);
        Route::post('tagging/edit/{id}', [TaggingController::class, 'update']);
        Route::get('tagging/delete/{id}', [TaggingController::class, 'delete']);


        Route::get('faq', [FaqController::class, 'index']);
        Route::get('faq/add', [FaqController::class, 'create']);
        Route::post('faq/add', [FaqController::class, 'store']);
        Route::get('faq/edit/{id}', [FaqController::class, 'edit']);
        Route::post('faq/edit/{id}', [FaqController::class, 'update']);
        Route::get('faq/delete/{id}', [FaqController::class, 'delete']);
    });
    Route::get('/logout', [LogoutController::class, 'logout']);
    Route::get('gantipass', [GantiPassController::class, 'index']);
    Route::post('gantipass', [GantiPassController::class, 'update']);
});
