<?php

namespace App\Providers;

use App\Voyager\CustomSchemaManager;
use Illuminate\Support\ServiceProvider;
use TCG\Voyager\Database\Schema\SchemaManager;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind(SchemaManager::class, CustomSchemaManager::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
