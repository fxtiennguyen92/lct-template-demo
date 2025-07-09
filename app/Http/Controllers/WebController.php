<?php

namespace App\Http\Controllers;

use App\Models\Group;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use TCG\Voyager\Models\Page;

class WebController extends Controller
{
    public function getTemplateCode() {
        return session('template_code', config('app.template_code'));
    }


    public function sitemap()
    {
        return response()->view($this->getTemplateCode() . '.sitemap')->header('Content-Type', 'text/xml');
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


        return view($this->getTemplateCode() . '.home', compact('groups', 'lastGroup', 'images'));
    }

    public function menu()
    {
        return view($this->getTemplateCode() . '.menu');
    }

    public function legalNotice()
    {
        $page = Page::where('slug', 'mentions-legales')->where('status', 'ACTIVE')->first();
        if (!$page) {
            return abort(404);
        }

        return view($this->getTemplateCode() . '.legal_notice', compact('page'));
    }

    public function privacyPolicy()
    {
        $page = Page::where('slug', 'privacy-policy')->where('status', 'ACTIVE')->first();
        if (!$page) {
            return abort(404);
        }

        return view($this->getTemplateCode() . '.privacy_policy', compact('page'));
    }
}
