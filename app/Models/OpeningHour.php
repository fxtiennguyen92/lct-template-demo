<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OpeningHour extends Model
{
    protected $fillable = ['day', 'time', 'order_display'];

    protected function casts(): array
    {
        return [
            'order_display' => 'integer',
        ];
    }

    public static function getAll() {
        return OpeningHour::orderBy('order_display')->get();
    }
}
