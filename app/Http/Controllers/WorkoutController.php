<?php

namespace App\Http\Controllers;
use App\Models\Workout;
use Illuminate\Http\Request;

class WorkoutController extends Controller
{
    public function index(Request $request) {
        $bodyPartFilter = $request->query('body_part');

        // Use the filter only if a body part is specified
        $workouts = $bodyPartFilter
            ? Workout::whereHas('bodyparts', function ($query) use ($bodyPartFilter) {
                $query->where('name', $bodyPartFilter);
            })->get()
            : Workout::all();

        return view('workouts.main', ['workouts' => $workouts, 'selectedBodyPart' => $bodyPartFilter]);
    }
}