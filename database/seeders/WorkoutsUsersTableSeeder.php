<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\WorkoutUser;
use App\Models\User;
use App\Models\Workout;


class WorkoutsUsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         // Assuming you have existing User and Workout records in the database
         $users = User::all();
         $workouts = Workout::all();
 
         // Clear existing relationships
         WorkoutUser::truncate();
 
         // Seed the pivot table
         foreach ($workouts as $workout) {
             $randomUsersCount = rand(1, 3);
 
             // Assuming $users is a collection of User models
             $randomUsers = $users->random($randomUsersCount);
 
             foreach ($randomUsers as $user) {
                 $workout->users()->attach($user, [
                     // Add any additional fields in the pivot table here if needed
                 ]);
             }
         }
     }
    }
