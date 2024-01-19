<?php

use App\Http\Controllers\ExercisesController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\WorkoutController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\UserworkoutsController;
use GuzzleHttp\Promise\Create;
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

//workout routes
Route::get('/workouts', [WorkoutController::class, 'index'])->middleware(['auth', 'verified'])->name('workouts.main');
Route::get('/workouts/create', [WorkoutController::class, 'create'])->name('workouts.create');
Route::post('/workouts/store', [WorkoutController::class, 'store'])->name('workouts.store');
Route::get('/workouts/search', [WorkoutController::class, 'search'])->name('workouts.search');
Route::get('/workouts/{id}', [WorkoutController::class, 'detail'])->name('workouts.detail'); 

//exercise routes
Route::get('/exercises', [ExercisesController::class, 'index'])->name('exercises.main');
Route::get('/exercises/search', [ExercisesController::class, 'search'])->name('exercises.search');
Route::get('/exercises/{id}', [ExercisesController::class, 'detail'])->name('exercises.detail');

//review routes
Route::get('/reviews', [ReviewController::class, 'userReviews'])->name('reviews.main');
Route::get('/workouts/{workout}/reviews/create', [ReviewController::class, 'create'])->name('reviews.create');
Route::post('/workouts/{workout}/reviews', [ReviewController::class, 'store'])->name('reviews.store');

//wishlist routes
Route::get('/wishlist', [WishlistController::class, 'viewWishlist'])->name('wishlist.main');
Route::post('/wishlist/add/{workout}', [WishlistController::class,'addToWishlist'])->name('wishlist.add');
Route::delete('/wishlist/remove/{workout}', [WishlistController::class,'removeFromWishlist'])->name('wishlist.remove');

//user workouts routes
Route::middleware(['auth'])->group(function () {
    Route::get('/userworkouts/{id}/edit', [UserworkoutsController::class, 'editUsersworkout'])->name('userworkouts.edit');
    Route::put('/userworkouts/{id}/update', [UserworkoutsController::class, 'updateUsersWorkout'])->name('userworkouts.update');
    Route::delete('/userworkouts/{id}', [UserWorkoutsController::class, 'destroy'])->name('userworkouts.destroy');
    Route::get('/userworkouts/{userId}', [UserworkoutsController::class, 'showUserWorkouts'])
        ->name('userworkouts.main')
        ->middleware('checkUserId');
});

require __DIR__.'/auth.php';
