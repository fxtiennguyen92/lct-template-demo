<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Plat extends Model
{
    use HasFactory;
    protected $table = 'plats';
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $fillable = ['title', 'description', 'price', 'image_id', 'plat_id'];

    public function menus()
    {
        return $this->belongsToMany(Menu::class, 'menus_plats');
    }

    public function image()
    {
        return $this->belongsTo(Image::class, 'image_id');
    }
}
