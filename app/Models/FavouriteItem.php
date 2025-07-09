<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FavouriteItem extends Model
{
    protected $guarded = ['id'];

    public static function getAll(string $templateCode)
    {
        return FavouriteItem::where('template_code', $templateCode)
            ->get();
    }
}
