<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;
use App\Models\Workout;

class ReviewFactory extends Factory
{
    public function definition()
    {
        $user_ids = User::pluck('id')->toArray();
        $workout_ids = Workout::pluck('id')->toArray();

        return [
            'content' => fake()->text(),
            'rating' => fake()->numberBetween(1, 10),
            'user_id' => fake()->randomElement($user_ids),
            'workout_id' => fake()->randomElement($workout_ids),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

