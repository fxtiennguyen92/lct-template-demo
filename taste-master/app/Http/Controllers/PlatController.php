<?php

namespace App\Http\Controllers;

use App\Models\Plat;
use App\Models\Image;
use App\Models\Offer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class PlatController extends Controller
{
    public function all()
    {
        $plats = Plat::getAll();
        return;
    }
    public function show()
    {
        $plats = Plat::all();
        return view("admin.menus_plats.list", ["plats" => $plats]);
    }

    public function edit(string $id)
    {
        $plat = plat::find($id);
        return view('admin.menus_plats.plat_edit', ['plat' => $plat]);
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'title' => 'required|max:255',
            'description' => 'max:1050',
            'price' => 'nullable|numeric',
        ]);

        $plat = Plat::find($id);
        if (!$plat) {
            return redirect()->back()->withErrors('Offer not found');
        }

        $currentImg = $plat->image;
        if ($request->hasFile('images')) {

            if ($currentImg) {
                Storage::delete('public/' . $currentImg->src);
                $currentImg->delete();
                // dd('Đang xử lý ảnh mới');
            }
            // $filename = time() . '_' . $request->file('images')->getClientOriginalName();
            $filename = $request->file('images')->getClientOriginalName();

            $path = $request->file('images')->storeAs('public/images', $filename);
            $publicPath = 'images/' . $filename;

            $currentImg = Image::create([
                'src' => $publicPath,
                'category' => 'Offer',
            ]);
        }

        $plat->update([
            'title' => $request->input(('title')),
            'description' => $request->input('description'),
            'price' => $request->input('price'),
            'image_id' => $currentImg->id,
        ]);
        return redirect("menus_plats");
    }

    public function delete(string $id)
    {
        $plat = Plat::with(['image'])->find($id);
        if ($plat->image && Storage::disk('public')->exists($plat->image->src)) {
            Storage::disk('public')->delete($plat->image->src);
            $plat->image->delete();
        }

        $plat->menus()->detach(); 

        //sup offer
        $plat->delete();

        return redirect("menus_plats");
    }
}
