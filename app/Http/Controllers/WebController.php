<?php

namespace App\Http\Controllers;

use App\Models\Group;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use TCG\Voyager\Models\Page;

class WebController extends Controller
{
    const PROJECT_CODE = 'op001';

    public function sitemap()
    {
        return response()->view($this::PROJECT_CODE . '.sitemap')->header('Content-Type', 'text/xml');
    }

    public function legalNotice()
    {
        $page = Page::where('slug', 'mentions-legales')->where('status', 'ACTIVE')->first();
        if (!$page) {
            return abort(404);
        }

        return view($this::PROJECT_CODE . '.legal_notice', compact('page'));
    }

    public function home()
    {
        // Services
        $groups = Group::getAll();
        $lastGroup = $groups->pop();

        // Gallery
        $directory = storage_path('app/public/gallery');
        $files = File::files($directory);
        $images = [];
        foreach ($files as $file) {
            $images[] = asset('storage/gallery/' . $file->getFilename());
        }


        return view($this::PROJECT_CODE . '.home', compact('groups', 'lastGroup', 'images'));
    }
}
