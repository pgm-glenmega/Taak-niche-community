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

public function destroy($id)
{
    $review = Review::find($id);

    if (!$review) {
        return redirect()->back()->withErrors(['error' => 'Review not found.']);
    }

    // Check if the user is authorized to delete the review (you can customize this logic)
    if ($review->user_id != auth()->id()) {
        return redirect()->back()->withErrors(['error' => 'Unauthorized to remove this review.']);
    }

    $review->delete();

    return redirect()->back()->with('success', 'Review removed successfully.');
}

// ReviewController.php

public function edit($id)
{
    $review = Review::find($id);

    if (!$review) {
        return redirect()->back()->withErrors(['error' => 'Review not found.']);
    }


    return view('reviews.edit', ['review' => $review]);
}

public function update(Request $request, $id)
{
    $request->validate([
        'rating' => 'required|integer|min:1|max:5',
        'content' => 'required|string',
    ]);

    $review = Review::find($id);

    if (!$review) {
        return redirect()->back()->withErrors(['error' => 'Review not found.']);
    }


    $review->update([
        'rating' => $request->input('rating'),
        'content' => $request->input('content'),
    ]);

    return redirect()->route('reviews.main')->with('success', 'Review updated successfully.');
}


}
