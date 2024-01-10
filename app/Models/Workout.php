<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Workout extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function exercises()
    {
        return $this->belongsToMany(Exercise::class, 'workout_exercise')->withPivot('sets', 'reps');
                
    }

    public function bodyparts()
    {
        return $this->belongsToMany(bodypart::class, 'workout_bodypart');
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'workout_user');
    }
}
