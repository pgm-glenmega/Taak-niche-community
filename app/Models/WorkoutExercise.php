<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class workoutexercise extends Pivot
{
    use HasFactory;

    protected $table = 'workout_exercise';

    protected $fillable = ['exercise_id', 'workout_id', 'sets', 'reps'];

}
