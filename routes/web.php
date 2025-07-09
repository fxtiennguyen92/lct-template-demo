<?php

use App\Http\Controllers\SitemapXmlController;
use App\Http\Controllers\TemplateController;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('templates', [TemplateController::class, 'templates'])->name('templates.index');
Route::get('template/{code}', [TemplateController::class, 'view'])->name('templates.show');

/**
 * SINGLE PROJECT 
 */
Route::get('', [WebController::class, 'home']);
Route::get('home', [WebController::class, 'home'])->name('home');
Route::get('menu', [WebController::class, 'menu'])->name('menu');
Route::get('mentions-legales', [WebController::class, 'legalNotice'])->name('legal-notice');
Route::get('privacy-policy', [WebController::class, 'privacyPolicy'])->name('privacy-policy');

Route::get('sitemap.xml', [WebController::class, 'sitemap']);