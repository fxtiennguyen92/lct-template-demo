<?php

use App\Http\Controllers\SitemapXmlController;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/', [WebController::class, 'home'])->name('home');
Route::get('mentions-legales', [WebController::class, 'legalNotice'])->name('legal-notice');
Route::get('privacy-policy', [WebController::class, 'privacyPolicy'])->name('privacy-policy');

Route::get('sitemap.xml', [WebController::class, 'sitemap']);