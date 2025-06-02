<?php

namespace App\Http\Controllers;

use App\Models\Offer;
use Illuminate\Http\Request;

class OfferController extends Controller
{
    public function all() 
    {
        $offers = Offer::getAll();
        return; // admin see all offer
    }

    public function create() 
    {
        return; //admin create an offer
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required!max:255',
            'description' => 'max:1050',
            'price' => 'nunable',
        ]);

        $offer = Offer::create([
            'title' => $request->input(('title')),
            'description' => $request->input('description'),
            'price' => $request->input('price'),
        ]);

        // if there is a photo, save it

        return;
    }
}
