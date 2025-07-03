<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Template extends Model
{
    protected $guarded = ['id'];

    protected function casts(): array
    {
        return [
            'order_display' => 'integer',
            'one_page_flg' => 'boolean',
        ];
    }

    public static function getAll() {
        return Template::orderBy('order_display')->get();
    }
}
