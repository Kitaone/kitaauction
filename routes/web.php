<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/', [PortalController::class, 'login']);
// Route::get('/', [PortalController::class, 'login']);
Route::post('login', [PortalController::class, 'post_login']);
Route::get('api/login', [PortalController::class, 'apiLogin']);
Route::get('logout', [PortalController::class, 'logout']);
Route::get('reload-captcha', [PortalController::class, 'reloadCaptcha']);
Route::get('shared/{id}', [PortalController::class, 'shared']);

Route::get('/', function(){
    return view('backend.layout.content');
});

Route::group(['middleware' => ['check-auth']], function () {

    Route::get('portal/dashboard', [PortalController::class, 'dashboard']);
});