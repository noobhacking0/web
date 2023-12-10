<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Auth;
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
route::get('/',[\App\Http\Controllers\PostController::class,'home']);

route::resource('/posts',\App\Http\Controllers\PostController::class);

route::get('/search',[PostController::class,'search']);

route::group(['middleware' => 'guest'], function (){
    route::get('/register', [AuthController::class, 'register'])->name('register');
    route::post('/register', [AuthController::class, 'registerPost'])->name('registerPost');
    route::get('/login', [AuthController::class, 'login'])->name('login');
    route::post('/login', [AuthController::class, 'loginPost'])->name('loginPost');
});

route::group(['middleware' => 'auth'], function (){
    route::get('/home', [AuthController::class, 'index']);
    route::delete('/logout', [AuthController::class, 'logout'])->name('logout');
});