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
            abort(404); // or handle the case when the user is not found
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
    
        // Update basic workout information
        $workout->update([
            'name' => $request->input('name'),
            'duration' => $request->input('duration'),
            'bodypart_id' => $request->input('bodypart'),
            'description' => $request->input('description'),
            'instructions' => $request->input('instructions'),
        ]);
    
        // Sync the exercises relationship with 'sets' and 'reps'
        $workout->exercises()->sync($request->input('exercises', []), [
            'sets' => $request->input('sets', []), 
            'reps' => $request->input('reps', []),
        ]);
    
        // Get the user ID directly from the relationship
        $userId = $workout->users->first()->id;
    
        return redirect()->route('userworkouts.main', ['userId' => $userId])->with('success', 'Workout updated successfully!');
    }
    
    public function destroy($id)
{
    // Retrieve the workout
    $workout = Workout::findOrFail($id);

    // Check if the logged-in user is associated with the workout
    if (!$workout->users->contains(auth()->user()->id)) {
        abort(403, 'Unauthorized action.');
    }

    // If the workout is associated with only one user, delete it entirely
    if ($workout->users()->count() == 1) {
        $workout->delete();
    } else {
        // Otherwise, just detach it from the logged-in user
        $workout->users()->detach(auth()->user()->id);
    }

    return redirect()->route('workouts.main')->with('success', 'Workout removed successfully.');
}




}
