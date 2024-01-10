<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Workout;
use App\Models\Bodypart;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class WorkoutBodypartFactory extends Factory
{
    protected $model = \App\Models\WorkoutBodypart::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

     
    public function definition(): array
    {
        return [
            'workout_id' => Workout::factory(),
            'bodypart_id' => Bodypart::factory(),
        ];
    }
}
