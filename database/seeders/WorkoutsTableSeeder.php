<?php

namespace Database\Seeders;

use App\Models\Workout;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class WorkoutsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $workouts = [
            "High-Intensity Interval Training (HIIT)",
            "CrossFit Circuit Blast",
            "Cardio Kickboxing",
            "Powerlifting Party",
            "Yoga Fusion Flow",
            "Bootcamp Bonanza",
            "Core Crusher Challenge",
            "Tabata Torch",
            "Spin Sprint Session",
            "Functional Fitness Fiesta"
          ];

          foreach ($workouts as $workout) {
            Workout::create([
                'name' => $workout,
                'duration' => rand(10, 120), 
            ]);
        }
    }
}
