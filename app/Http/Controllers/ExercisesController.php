<?php

namespace App\Http\Controllers;

use App\Models\Exercise;
use Illuminate\Http\Request;

class ExercisesController extends Controller
{
    public function index(Request $request)
    {
        $bodyPartFilter = $request->query('body_part');

        $exercises = $bodyPartFilter
            ? Exercise::whereHas('bodyparts', function ($query) use ($bodyPartFilter) {
                $query->where('name', $bodyPartFilter);
            })->get()
            : Exercise::all();

        return view('exercises.main', ['exercises' => $exercises, 'selectedBodyPart' => $bodyPartFilter]);
    }

    public function detail($id)
    {
        $exercise = Exercise::find($id);

        return view('exercises.detail', ['exercise' => $exercise]);
    }

    public function create()
    {
        return view('exercises.create', ['exercise' => '']);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'duration' => 'required|integer',
        ]);

        Exercise::create([
            'name' => $request->input('name'),
            'duration' => $request->input('duration'),
        ]);

        return redirect()->route('exercises.main')->with('success', 'Exercise added successfully.');
    }

    public function search(Request $request)
{
    $query = $request->input('query');
    $exercises = Exercise::where('name', 'like', '%' . $query . '%')->get();

    return view('exercises.search-results', ['exercises' => $exercises, 'query' => $query]);
}
}
