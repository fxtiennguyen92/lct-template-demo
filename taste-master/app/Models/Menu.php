<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Menu extends Model
{
    use HasFactory;
    protected $table = 'menus';
    protected $primaryKey = 'id';
    protected $fillable = ['title'];
    public $timestamps = false;

    public function plats(){
        return $this->belongsToMany(Plat::class);
    }
}
