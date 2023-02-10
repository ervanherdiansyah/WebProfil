<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\landing\HomeController;
use App\Http\Controllers\dashboard\DashboardController;
use App\Http\Controllers\dashboard\BeritaController;
use App\Http\Controllers\login\AuthController;
use App\Http\Controllers\landing\tentang\SelayangController;
use App\Http\Controllers\landing\tentang\OrganisasiController;
use App\Http\Controllers\landing\tentang\DivisiController;
use App\Http\Controllers\landing\ContactController;

// Selayang Pandang Controller
use App\Http\Controllers\landing\tentang\SelayangPandang\LokasiController;
use App\Http\Controllers\landing\tentang\SelayangPandang\SambutanController;
use App\Http\Controllers\landing\tentang\SelayangPandang\SejarahController;
use App\Http\Controllers\landing\tentang\SelayangPandang\VisiYayasanController;

// Organisasi & Tata Kerja Controller
use App\Http\Controllers\landing\tentang\OrganisasiTataKerja\StrukturYayasanController;
use App\Http\Controllers\landing\tentang\OrganisasiTataKerja\ProfilPimpinanController;

// Divisi Controller
use App\Http\Controllers\landing\tentang\Divisi\DivisiMediaController;
use App\Http\Controllers\landing\tentang\Divisi\DivisiITController;

// Pendaftaran Controller
use App\Http\Controllers\landing\pendaftaran\PendaftaranController;
use App\Http\Controllers\landing\pendaftaran\DaftarSantriController;
use App\Http\Controllers\landing\pendaftaran\DaftarRAController;
use App\Http\Controllers\landing\pendaftaran\DaftarMTsController;
use App\Http\Controllers\landing\pendaftaran\DaftarSMAController;

// SMA Controller
use App\Http\Controllers\landing\SMA\SMAController;
use App\Http\Controllers\landing\SMA\HeadmasterSMAController;
use App\Http\Controllers\landing\SMA\VisiMisiSMAController;
use App\Http\Controllers\landing\SMA\StrukturSMAController;

// MTs Controller
use App\Http\Controllers\landing\MTs\MTsController;
use App\Http\Controllers\landing\MTs\HeadmasterMTsController;
use App\Http\Controllers\landing\MTs\VisiMisiMTsController;
use App\Http\Controllers\landing\MTs\StrukturMTsController;

// RA Controller
use App\Http\Controllers\landing\RA\RAController;
use App\Http\Controllers\landing\RA\HeadmasterRAController;
use App\Http\Controllers\landing\RA\VisiMisiRAController;
use App\Http\Controllers\landing\RA\StrukturRAController;

// Unit Controller
use App\Http\Controllers\landing\unit\UnitController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Landing
Route::get('/',[HomeController::class,'index']);
Route::get('/contact',[ContactController::class,'index']);
Route::get('/maintenance',[HomeController::class,'showMaintenance']);
Route::get('/videoprofil',[HomeController::class,'showVideoProfil']);

Route::prefix('tentang')->group(function() 
{
    Route::get('/',[HomeController::class,'showTentang']);
    Route::prefix('selayangpandang')->group(function() 
    {
        Route::get('/',[HomeController::class,'showSelayangPandang']);
        Route::get('/sambutan',[SambutanController::class,'index']);
        Route::get('/sejarah',[SejarahController::class,'index']);
        Route::get('/visi',[VisiYayasanController::class,'index']);
        Route::get('/lokasi',[LokasiController::class,'index']);
    });

    Route::prefix('organisasi')->group(function() 
    {
        Route::get('/',[HomeController::class,'showOrganisasi']);
        Route::get('/struktur',[StrukturYayasanController::class,'index']);
        Route::get('/profil',[ProfilPimpinanController::class,'index']);
    });

    Route::prefix('divisi')->group(function() 
    {
        Route::get('/',[HomeController::class,'showDivisi']);
        Route::get('/media',[DivisiMediaController::class,'index']);
        Route::get('/it',[DivisiITController::class,'index']);
    });
});

Route::prefix('pendaftaran')->group(function() 
{
    Route::get('/',[PendaftaranController::class,'index']);
    Route::get('/santri',[DaftarSantriController::class,'index']);
    Route::get('/ra',[DaftarRAController::class,'index']);
    Route::get('/mts',[DaftarMTsController::class,'index']);
    Route::get('/sma',[DaftarSMAController::class,'index']);
});

Route::prefix('sma')->group(function() 
{
    Route::get('/',[SMAController::class,'index']);
    Route::get('/visimisi',[VisiMisiSMAController::class,'index']);
    Route::get('/headmaster',[HeadmasterSMAController::class,'index']);
    Route::get('/struktur',[StrukturSMAController::class,'index']);
});

Route::prefix('mts')->group(function() 
{
    Route::get('/',[MTsController::class,'index']);
    Route::get('/visimisi',[VisiMisiMTsController::class,'index']);
    Route::get('/headmaster',[HeadmasterMTsController::class,'index']);
    Route::get('/struktur',[StrukturMTsController::class,'index']);
});

Route::prefix('ra')->group(function() 
{
    Route::get('/',[RAController::class,'index']);
    Route::get('/visimisi',[VisiMisiRAController::class,'index']);
    Route::get('/headmaster',[HeadmasterRAController::class,'index']);
    Route::get('/struktur',[StrukturRAController::class,'index']);
});

Route::prefix('unit')->group(function() 
{
    Route::get('/',[UnitController::class,'ShowAllUnit']);
    Route::get('/detail',[BeritaController::class,'DetailBerita']);
});

Route::get('/aksescepat',[HomeController::class,'showAksesCepat']);
Route::prefix('berita')->group(function() 
{
    Route::get('/',[BeritaController::class,'index']);
    Route::get('/detail',[BeritaController::class,'DetailBerita']);
});


//Dashboard
Route::get('/login', [AuthController::class, 'index'])->name('login');
Route::post('/postlogin', [AuthController::class, 'login']);
Route::get('/logout', [AuthController::class, 'logout'])->name('logout');

Route::group(['middleware' => 'auth'], function () {

    Route::prefix('admin')->middleware('can:admin')->group(function () {
        
        //Home
        Route::get('/dashboard', [DashboardController::class, 'index']);
        Route::post('/dashboard/create', [DashboardController::class, 'store']);
        Route::get('/dashboard/destroy/{id}', [DashboardController::class, 'destroy']);
        Route::get('/dashboard/edit/{id}', [DashboardController::class, 'edit']);
        Route::post('/dashboard/update/{id}', [DashboardController::class, 'update']);

        //Header
        Route::post('/dashboard/create/header', [DashboardController::class, 'storeheader']);
        Route::get('/dashboard/destroy/header/{id}', [DashboardController::class, 'destroyheader']);
        Route::get('/dashboard/edit/header/{id}', [DashboardController::class, 'editheader']);
        Route::post('/dashboard/update/header/{id}', [DashboardController::class, 'updateheader']);

        //Kotak
        Route::post('/dashboard/create/kotak', [DashboardController::class, 'storekotak']);
        Route::get('/dashboard/destroy/kotak/{id}', [DashboardController::class, 'destroykotak']);
        Route::get('/dashboard/edit/kotak/{id}', [DashboardController::class, 'editkotak']);
        Route::post('/dashboard/update/kotak/{id}', [DashboardController::class, 'updatekotak']);

        //Berita
        Route::get('/berita', [BeritaController::class, 'index']);
        Route::post('/berita/create/', [BeritaController::class, 'store']);
        Route::get('/berita/destroy/{id}', [BeritaController::class, 'destroy']);
        Route::get('/berita/edit/{id}', [BeritaController::class, 'edit']);
        Route::post('/berita/update/{id}', [BeritaController::class, 'update']);

        //Kategori Bertia
        Route::post('/berita/create/kategori', [BeritaController::class, 'storekategori']);
        Route::get('/berita/destroy/kategori/{id}', [BeritaController::class, 'destroykategori']);
        Route::get('/berita/edit/kategori/{id}', [BeritaController::class, 'editkategori']);
        Route::post('/berita/update/kategori/{id}', [BeritaController::class, 'updatekategori']);

        //Pengaturan
        // Route::get('/pengaturan', [PengaturanController::class, 'index']);
        // Route::put('/updatepassword', [PengaturanController::class, 'updatepassword'])->name('updatepassword');
    });
});
