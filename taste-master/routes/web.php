<?php

use App\Http\Controllers\MenuController;
use App\Http\Controllers\OfferController;
use App\Http\Controllers\PlatController;
use App\Http\Controllers\WebController;
use App\Models\Menu;
use Illuminate\Support\Facades\Route;


// Route::get('/', function () {
//     return view('welcome');
// });


// Route::get('/admin', function () {
//     return view('admin.app');
// });
Route::get('/admin', [WebController::class, 'showAdmin'] )->name('admin');

Route::get('/home', [WebController::class, 'showindex'] )->name('home');

Route::get('/offers', [OfferController::class, 'show'])->name('offers.list');
Route::get('/offers/create', [OfferController::class, 'create'])->name('offers.create');
Route::post('/offers', [OfferController::class, 'store'])->name('offers.store');
Route::get('/offers/{id}/edit', [OfferController::class, 'edit'])->name('offers.edit');
Route::put('/offers{id}', [OfferController::class, 'update'])->name('offers.update');
Route::delete('/offers/{id}', [OfferController::class, 'delete'])->name('offers.delete');

Route::get('/menus_plats', [MenuController::class, 'show'])->name('menus_plats');
Route::get('/menus_plats/create', [MenuController::class, 'create'])->name('menus_plats.create');
Route::post('/menus_plats/store', [MenuController::class, 'store'])->name('menus_plats.store');
Route::get('/plats/{id}/edit', [PlatController::class, 'edit'])->name('plats.edit');
Route::put('/plats/{id}', [PlatController::class, 'update'])->name('plats.update');
Route::put('/menus/{id}', [MenuController::class, 'update'])->name('menus.update');
Route::delete('/plats/{id}', [PlatController::class, 'delete'])->name('plats.delete');
Route::delete('/Menu/{id}', [MenuController::class, 'delete'])->name('menus_plats.delete');
