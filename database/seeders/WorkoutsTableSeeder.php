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

        $descriptions = [
            "A high-energy workout involving short bursts of intense exercise.",
            "A challenging CrossFit circuit to boost strength and endurance.",
            "A cardiovascular workout with elements of kickboxing techniques.",
            "A weightlifting party focusing on powerlifting movements.",
            "A yoga session that combines different yoga styles for a flowy experience.",
            "A dynamic and intense bootcamp-style workout.",
            "An intense core-focused workout designed to challenge your midsection.",
            "A workout based on the Tabata protocol, a form of high-intensity interval training.",
            "An energetic spinning session for cardiovascular fitness.",
            "A functional fitness workout targeting various muscle groups."
        ];

        $instructions = [
            "Follow the instructor's cues for intervals of high-intensity exercises.",
            "Complete each exercise in the circuit for the specified duration.",
            "Combine cardio and kickboxing moves in this energetic session.",
            "Lift heavy weights with proper form for maximum powerlifting benefits.",
            "Flow through yoga poses, focusing on breath and movement.",
            "Engage in a variety of exercises in a bootcamp format.",
            "Perform core exercises with proper form and controlled movements.",
            "Alternate between 20 seconds of intense exercise and 10 seconds of rest.",
            "Adjust resistance and speed on the spin bike for an effective session.",
            "Use functional movements to enhance overall fitness."
        ];

        foreach ($workouts as $key => $workout) {
            Workout::create([
                'name' => $workout,
                'description' => $descriptions[$key],
                'instructions' => $instructions[$key],
                'duration' => rand(10, 120),
            ]);
        }
    }
}
