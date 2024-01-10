<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class workoutbodypart extends Pivot
{
    use HasFactory;

    protected $table = 'workout_bodypart';

    protected $fillable = ['bodypart_id', 'workout_id'];
}
