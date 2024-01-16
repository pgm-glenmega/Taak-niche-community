<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Workout;
use App\Models\Bodypart;


class Exercise extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'description'];

    public function workouts()
    {
        return $this->belongsToMany(Workout::class, 'workout_exercise')->withPivot('sets', 'reps');
    }

    public function bodyparts()
{
    return $this->belongsToMany(Bodypart::class);
}
}
