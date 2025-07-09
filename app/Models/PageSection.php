<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PageSection extends Model
{
    protected $guarded = ['id'];

    public static function getByCode(string $sectionCode, string $templateCode = '')
    {
        return PageSection::where('section_code', $sectionCode)
            ->when($templateCode, function ($query, $templateCode) {
                return $query->where('template_code', $templateCode);
            })
            ->get();
    }

    public static function getFirstByCode(string $sectionCode, string $templateCode = '')
    {
        return PageSection::where('section_code', $sectionCode)
            ->when($templateCode, function ($query, $templateCode) {
                return $query->where('template_code', $templateCode);
            })
            ->first();
    }
}
