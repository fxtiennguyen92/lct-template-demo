<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $fillable = ['group_id', 'title', 'description', 'duration', 'order_display', 'price'];

    protected function casts(): array
    {
        return [
            'order_display' => 'integer',
            'duration' => 'integer',
            'price' => 'decimal:2',
        ];
    }

    public function group()
    {
        return $this->belongsTo(Group::class);
    }
}
