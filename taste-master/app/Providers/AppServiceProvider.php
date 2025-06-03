<?php

namespace App\Providers;

use App\Models\Image;
use App\Models\Menu;
use App\Models\Offer;
use App\Models\Plat;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
        // Truyền dữ liệu $offers vào tất cả các view
        View::share('offers', Offer::all());
        View::share('images', Image::all());
        View::share('menus', Menu::all());
        View::share('plats', Plat::all());
    }
}
