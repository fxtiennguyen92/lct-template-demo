<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $fillable = ['title', 'description', 'order_display'];

    protected function casts(): array
    {
        return [
            'order_display' => 'integer',
        ];
    }

    public function services()
    {
        return $this->hasMany(Service::class)->orderBy('order_display');
    }

    public static function getAll() {
        return Group::orderBy('order_display')->with('services')->get();
    }
}
