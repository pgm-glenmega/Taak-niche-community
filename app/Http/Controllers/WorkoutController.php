<?php

namespace App\Http\Controllers;

class WorkoutController extends Controller
{
    public function index() {
        return view('workouts.main');
    }
}