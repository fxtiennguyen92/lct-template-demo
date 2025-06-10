<?php

namespace App\Models;
use App\Models\Subtitre;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Content extends Model
{
    use HasFactory;
    protected $table = 'contents';
    protected $primaryKey = 'id';
    protected $fillable = ['title', 'description','category'];

    public function subtitres()
    {
        return $this->hasMany(Subtitre::class);
    }
}
