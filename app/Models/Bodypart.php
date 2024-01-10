<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Workout;


class bodypart extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function workouts()
    {
        return $this->belongsToMany(Workout::class, 'workout_bodypart');
    }
}
