<?php
use App\Http\Controllers\OfferController;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('layouts.home');
});

Route::get('/admin', function () {
    return view('admin.app');
});

Route::get('/offers', [OfferController::class, 'show'])->name('offers.list');
Route::get('/offers/create', [OfferController::class, 'create'])->name('offers.create');
Route::post('/offers', [OfferController::class, 'store'])->name('offers.store');
Route::get('/offers/{id}/edit', [OfferController::class, 'edit'])->name('offers.edit');
Route::put('/offers{id}', [OfferController::class, 'update'])->name('offers.update');
Route::delete('/offers/{id}', [OfferController::class, 'delete'])->name('offers.delete');