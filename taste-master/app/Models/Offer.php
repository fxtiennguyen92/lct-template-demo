<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    use HasFactory;
    protected $table = 'offers';
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $fillable = ['title', 'description', 'price', 'image_id'];

    // Phương thức để lấy liên kết 
    public function image()
    {
        return $this->belongsTo(Image::class, 'image_id', 'id');
    }
}
