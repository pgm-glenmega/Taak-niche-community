<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Workout;
use App\Models\Bodypart;
use App\Models\Exercise;

class UserworkoutsController extends Controller
{
    public function showUserWorkouts($userId) {
        $user = User::find($userId);
    
        if (!$user) {
            abort(404);
        }
    
        $workouts = $user->workouts;
    
        return view('userworkouts.main', ['workouts' => $workouts]);
    }

    public function editUsersWorkout($id) {
        $workout = Workout::findOrFail($id);
        $bodyparts = Bodypart::all(); 
        $exercises = Exercise::all();

        return view('userworkouts.edit', compact('workout', 'bodyparts', 'exercises'));
    }

    public function updateUsersWorkout(Request $request, $id) {
        $workout = Workout::findOrFail($id);
    
        $workout->update([
            'name' => $request->input('name'),
            'duration' => $request->input('duration'),
            'bodypart_id' => $request->input('bodypart'),
            'description' => $request->input('description'),
            'instructions' => $request->input('instructions'),
        ]);
    
        $workout->exercises()->sync($request->input('exercises', []));

foreach ($request->input('sets', []) as $exerciseId => $sets) {
    $reps = $request->input('reps.' . $exerciseId, null); // Use null or a default value if needed
    $workout->exercises()->updateExistingPivot($exerciseId, compact('sets', 'reps'));
}

    
        $userId = $workout->users->first()->id;
    
        return redirect()->route('userworkouts.main', ['userId' => $userId])->with('success', 'Workout updated successfully!');
    }
    
    public function destroy($id)
{
    $workout = Workout::findOrFail($id);

    if (!$workout->users->contains(auth()->user()->id)) {
        abort(403, 'Unauthorized action.');
    }

    if ($workout->users()->count() == 1) {
        $workout->delete();
    } else {
        // Otherwise, just detach it from the logged-in user
        $workout->users()->detach(auth()->user()->id);
    }

    return redirect()->route('workouts.main')->with('success', 'Workout removed successfully.');
}

}
