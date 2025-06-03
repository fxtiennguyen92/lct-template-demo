<?php

namespace App\Models;

use App\Models\Plat;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Image extends Model
{
    use HasFactory;
    protected $table = 'images';
    protected $primaryKey = 'id';
    protected $fillable = ['category', 'src'];
    public $timestamps = false;

    public function offer() {
        return $this->hasOne(Offer::class, 'image_id');
    }
    public function plat() {
        return $this->hasOne(Plat::class, 'image_id');
    }
}
