<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\WorkoutBodypart;

class WorkoutsBodypartTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Assuming you have existing Bodypart and Workout records in the database
        $bodyparts = \App\Models\Bodypart::all();
        $workouts = \App\Models\Workout::all();

        // Clear existing relationships
        WorkoutBodypart::truncate();

        // Seed the pivot table
        foreach ($workouts as $workout) {
            $random = rand(1, 3);
        
            // Assuming $bodyparts is a collection of Bodypart models
            $randomBodyparts = $bodyparts->random($random);
        
            foreach ($randomBodyparts as $bodypart) {
                $workout->bodyparts()->attach($bodypart, [
                    // Add any additional fields in the pivot table here if needed
                ]);
            }
        }
    }
}
