<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Review;
use App\Models\Workout;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function create(Workout $workout)
    {
        return view('reviews.create', compact('workout'));
    }

    public function store(Request $request, Workout $workout)
    {
        $request->validate([
            'content' => 'required|string',
            'rating' => 'required|numeric|between:1,10',
        ]);

        $review = new Review([
            'content' => $request->input('content'),
            'rating' => $request->input('rating'),
        ]);

        $review->user()->associate(Auth::user());
        $review->workout()->associate($workout);

        $review->save();

        return redirect()->route('workouts.main', ['workout' => $workout->id])
            ->with('success', 'Review created successfully!');
    }
        
    public function userReviews()
    {
        $user = Auth::user();
        $reviews = $user->reviews;

        return view('reviews.main', ['reviews' => $reviews]);
}

}
