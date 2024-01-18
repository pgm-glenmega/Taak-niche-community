<?php
namespace App\Http\Controllers;

use App\Models\Workout;
use App\Models\Bodypart;
use App\Models\Exercise;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WorkoutController extends Controller
{
    public function index(Request $request)
    {
        $bodyPartFilter = $request->query('body_part');
        $workouts = $bodyPartFilter
            ? Workout::whereHas('bodyparts', function ($query) use ($bodyPartFilter) {
                $query->where('name', $bodyPartFilter);
            })->get()
            : Workout::all();

        return view('workouts.main', ['workouts' => $workouts, 'selectedBodyPart' => $bodyPartFilter]);
    }

    public function detail($id)
    {
        $workout = Workout::find($id);

        return view('workouts.detail', ['workout' => $workout]);
    }

    public function create()
    {
        $bodyparts = Bodypart::all();

        $exercises = Exercise::all();

        return view('workouts.create', ['bodyparts' => $bodyparts], ['exercises' => $exercises]);
    }

    public function store(Request $request)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'duration' => 'required|integer',
        'bodypart' => 'required|exists:bodyparts,id',
        'exercises' => 'array', 
        'description' => 'required|string', 
    ]);

    $user = Auth::user();

    $workout = $user->workouts()->create([
        'name' => $request->input('name'),
        'duration' => $request->input('duration'),
        'bodypart_id' => $request->input('bodypart'),
        'description' => $request->input('description'),
        'instructions' => $request->input('instructions'),
    ]);

    $bodyparts = [$request->input('bodypart')];
    $workout->bodyparts()->attach($bodyparts);

    $exercises = $request->input('exercises');

    $sets = $request->input('sets', []);
    $reps = $request->input('reps', []);

    $syncData = [];
    foreach ($exercises as $exerciseId) {
        $syncData[$exerciseId] = [
            'sets' => $sets[$exerciseId] ?? null,
            'reps' => $reps[$exerciseId] ?? null,
        ];
    }

    $workout->exercises()->attach($syncData);

    return redirect()->route('workouts.main')->with('success', 'Workout added successfully.');
}





    public function search(Request $request)
    {
        $query = $request->input('query');

        $workouts = Workout::where('name', 'like', '%' . $query . '%')->get();

        return view('workouts.search-results', ['workouts' => $workouts, 'query' => $query]);
    }
    
}
