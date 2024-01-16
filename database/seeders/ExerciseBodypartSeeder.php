<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ExerciseBodypart;
use App\Models\Bodypart;
use App\Models\Exercise;

class ExerciseBodypartSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        // Assuming you have existing Bodypart and Exercise records in the database
        $bodyparts = \App\Models\Bodypart::all();
        $exercises = \App\Models\Exercise::all();

        // Seed the pivot table
        foreach ($exercises as $exercise) {
            $random = rand(1, 3);

            // Assuming $bodyparts is a collection of Bodypart models
            $randomBodyparts = $bodyparts->random($random);

            foreach ($randomBodyparts as $bodypart) {
                $exercise->bodyparts()->attach($bodypart, [
                    // Add any additional fields in the pivot table here if needed
                ]);
            }
        }
    }
}
