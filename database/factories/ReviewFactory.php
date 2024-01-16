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
            'content' => $this->faker->text(),
            'rating' => $this->faker->numberBetween(1, 10),
            'user_id' => $this->faker->randomElement($user_ids),
            'workout_id' => $this->faker->randomElement($workout_ids),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

