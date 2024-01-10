<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\Pivot;

class WorkoutUser extends Pivot
{
    use HasFactory;

    protected $table = 'workout_user';

    protected $fillable = ['user_id', 'workout_id'];
}
