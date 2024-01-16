<?php

namespace App\Http\Controllers;

use App\Models\Workout;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WishlistController extends Controller
{
    public function addToWishlist(Workout $workout)
{
    $user = auth()->user();

    if ($user->workouts->contains($workout)) {
        return redirect()->back()->withErrors(['error' => 'Workout is already in the wishlist.']);
    }

    $user->workouts()->attach($workout);

    return redirect()->back()->with('success', 'Workout added to wishlist successfully.');
}



    public function viewWishlist()
{
    $wishlist = auth()->user()->workouts;

    return view('wishlist.main', compact('wishlist'));
}

public function removeFromWishlist(Workout $workout)
{
    
    auth()->user()->workouts()->detach($workout);

    return redirect()->back();
}
}
