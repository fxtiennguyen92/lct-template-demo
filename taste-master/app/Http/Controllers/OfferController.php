<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\Offer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class OfferController extends Controller
{
    public function all()
    {
        $offers = Offer::getAll();
        return; // admin see all offer
    }

    public function show()
    {
        $offers = Offer::all();
        return view("admin.offers.list", ["offers" => $offers]);
    }

    public function showClient()
    {
        $offers = Offer::all();
        return view("layouts.offer", ["offers" => $offers]);
    }

    public function create()
    {
        return view('admin.offers.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:255',
            'description' => 'max:1050',
            'price' => 'nullable|numeric',
            'image' => 'image|max:2048',
        ]);

        $offer = Offer::create([
            'title' => $request->input(('title')),
            'description' => $request->input('description'),
            'price' => $request->input('price'),
        ]);

        // if there is a photo, save it
        if ($request->hasFile('images')) {
            $filename = $request->file('images')->getClientOriginalName();
            // lưu ảnh vào storage/app/public/images
            $request->file('images')->storeAs('public/images', $filename, );
            $publicPath = 'images/' . $filename;
            $image = Image::create([
                'category' => 'Offer',
                'src' => $publicPath,
            ]);
            // Gán image_id cho offer, không phải image->offer()
            $offer->image_id = $image->id;
            $offer->save();
        }

        return redirect("offers");
    }

    public function edit(string $id)
    {
        $offer = Offer::find($id);
        return view('admin.offers.edit', ['offer' => $offer]);
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'title' => 'required|max:255',
            'description' => 'max:1050',
            'price' => 'nullable|numeric',
        ]);

        $offer = Offer::find($id);
        if (!$offer) {
            return redirect()->back()->withErrors('Offer not found');
        }

        $currentImg = $offer->image;
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

            if (!Storage::exists('public/images/' . $filename)) {
                dd('Ảnh chưa được lưu! 1 ');
            }

            $currentImg = Image::create([
                'src' => $publicPath,
                'category' => 'Offer',
            ]);
        }

        $offer->update([
            'title' => $request->input(('title')),
            'description' => $request->input('description'),
            'price' => $request->input('price'),
            'image_id' => $currentImg->id,  // GIỮ nguyên nếu không có ảnh mới
        ]);
        return redirect("offers");
    }

    public function delete(string $id)
    {
        $offer = Offer::with(['image'])->find($id);
        if ($offer->image && Storage::disk('public')->exists($offer->image->src)) {
            Storage::disk('public')->delete($offer->image->src);
            $offer->image->delete();
        }

        //sup offer
        $offer->delete();
        return redirect()->route('offers.list');
    }
}
