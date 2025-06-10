<?php

namespace App\Models;
use App\Models\Content;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Subtitre extends Model
{
    use HasFactory;
    protected $table = 'subtitres';
    protected $primaryKey = 'id';
    protected $fillable = ['title', 'url', 'content_id'];
    public $timestamps = false;

    public function content()
    {
        return $this->belongsTo(Content::class);
    }
}
