<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Exercise;

class ExercisesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $exercises= ["bench press", "dumbell flyes", "incline press", "decline press", "squat", "front squat", "lunges", "leg extension", "leg press", "leg raise" , "pull up", "lat pull down", "deadlift", "bent over rows", "push up", "shoulder press", "lateral raises", "rear delt fly", "crunches", "bicep curl", "incline dumbell curl", "ez bar curl", "tricep pushdown", "skull crusher", "dips", "calf raise", "seated calf raise", "cable crunches"];

        

        foreach($exercises as $exercise){
            Exercise::create([
                'name' => $exercise,
                'description' => 'This is a description for the exercise.',
            ]);
        };
    }
}
