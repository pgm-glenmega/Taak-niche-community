<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Workout;
use App\Models\Exercise;


class bodypart extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function workouts()
    {
        return $this->belongsToMany(Workout::class, 'workout_bodypart');
    }

    public function exercises()
{
    return $this->belongsToMany(Exercise::class);
}

}
