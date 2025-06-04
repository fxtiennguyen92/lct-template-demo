<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use App\Models\Plat;
use App\Models\Image;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function all()
    {
        $menus = Menu::getAll();
        return;
    }
    public function show()
    {
        $menus = Menu::with('plats')->get();
        return view("admin.menus_plats.list", ["menus" => $menus]);
    }

    public function create()
    {
        return view('admin.menus_plats.create');
    }

    public function store(Request $request)
    {


        // Xác định xem user muốn tạo menu mới hay chọn menu có sẵn
        $isCreatingNewMenu = $request->input('menu_id') === 'new';

        if ($isCreatingNewMenu) {
            $request->validate([
                'menu_title' => 'required|max:255',
            ]);

            $menu = Menu::create([
                'title' => $request->input('menu_title'),
            ]);
        } else {
            $request->validate([
                'menu_id' => 'required|exists:menus,id',
            ]);

            $menu = Menu::findOrFail($request->input('menu_id'));
        }

        $request->validate([
            'new_title' => 'required|max:255',
            'new_description' => 'max:1050',
            'new_price' => 'nullable|numeric',
            'new_image' => 'image|max:2048',

        ]);

        $platIds = [];

        // Gắn món ăn đã chọn (có sẵn)
        if ($request->has('selected_plats')) {
            $platIds = array_merge($platIds, $request->input('selected_plats'));
        }

        // Tạo món ăn mới nếu có
        if ($request->filled('new_title') && $request->filled('new_price')) {
            $newPlat = new Plat([
                'title' => $request->input('new_title'),
                'description' => $request->input('new_description'),
                'price' => $request->input('new_price'),
            ]);

            // xử lý ảnh
            if ($request->hasFile('new_image')) {
                $filename = $request->file('new_image')->getClientOriginalName();
                $path = $request->file('new_image')->storeAs('public/images', $filename);
                $publicPath = 'images/' . $filename;

                $image = Image::create([
                    'category' => 'Plat',
                    'src' => $publicPath,
                ]);

                $newPlat->image_id = $image->id;
            }

            $newPlat->save();
            $platIds[] = $newPlat->id;
        }

        //Gắn tất cả plats vào menu qua bảng pivot
        $menu->plats()->attach($platIds);

        return redirect()->route('menus_plats');
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'title' => 'required|string|max:255',
        ]);
        $menu = Menu::find($id);
        if (!$menu) {
            return redirect()->back()->withErrors('Menu not found');
        }

        $menu->update([
            'title' => $request->input('title'),
        ]);

        return redirect()->route('menus_plats');
    }

    public function delete(string $id)
    {
        $menu = Menu::findOrFail($id);

        // Xóa liên kết plats
        $menu->plats()->detach();

        // Xóa menu
        $menu->delete();

        return redirect()->route('menus_plats');
    }
}
