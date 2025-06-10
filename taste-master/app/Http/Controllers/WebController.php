<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use App\Models\Plat;
use App\Models\Image;
use App\Models\Offer;
use App\Models\Content;
use App\Models\Subtitre;
use Illuminate\Http\Request;

class WebController extends Controller
{
    public function showAdmin()
    {
        return view('admin.app');
    }
    public function showIndex()
    {
        $offers = Offer::all();
        $menus = Menu::all();
        $plats = Plat::with('image')->get();
        $images = Image::all();
        $galleryImages = Image::where('category', 'Gallery')->get();
        $contents = Content::with('subtitres')->whereIn('category',  ['Banner', 'Introduction', 'Gallery', 'Menu', 'Offer', 'Footer'])->get();

        return view('home', compact('offers', 'menus', 'images', 'plats', 'galleryImages', 'contents'));
    }
}
