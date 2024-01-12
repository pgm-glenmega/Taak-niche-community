<?php

use App\Http\Controllers\ExercisesController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\WorkoutController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


// Welcome route
Route::get('/', function () {
    return view('welcome');
});

// Dashboard route
Route::get('/dashboard', function () {
    return view('dashboard.main');
})->middleware(['auth', 'verified'])->name('dashboard');

// Profile routes
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

// feed route
Route::get('/feed', function () {
    echo 'here there will be a feed';
});

//workout routes
Route::get('/workouts', [WorkoutController::class, 'index'])->name('workouts.main');

//exercise routes
Route::get('/exercises', [ExercisesController::class, 'index']);



require __DIR__.'/auth.php';
