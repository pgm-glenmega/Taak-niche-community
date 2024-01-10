<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Workout;
use App\Models\Exercise;


class WorkoutsExercisesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $workouts = Workout::all();
        $exercises = Exercise::all();

        foreach ($workouts as $workout) {
            $numberOfExercises = rand(4, 8);
            $randomExercises = $exercises->random($numberOfExercises);

            foreach ($randomExercises as $exercise) {
                $workout->exercises()->attach($exercise, [
                    'sets' => rand(1, 5),
                    'reps' => rand(5, 20),
                    // Add any additional fields in the pivot table here if needed
                ]);
            }
        }
    }
    };
