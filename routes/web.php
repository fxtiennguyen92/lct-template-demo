<?php

use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/', [WebController::class, 'home'])->name('home');

// Route::get('/', function () {
//     return view('welcome');
// }); 