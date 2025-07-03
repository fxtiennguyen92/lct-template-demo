<?php

namespace App\Http\Controllers;

use App\Models\Group;
use App\Models\Template;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use TCG\Voyager\Models\Page;

class TemplateController extends Controller
{
    public function templates()
    {
        $templates = Template::getAll();
        return view('tpls.index', compact('templates'));
    }

    public function view(string $code)
    {
        session(['template_code' => strtolower($code)]);
        return redirect()->route('home');
    }
}
