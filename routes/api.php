<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Workout;
use Illuminate\Http\Response;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/workouts', function () {
    $page = request('page') ?? 1;
    $workouts = Workout::paginate(30, ['*'], 'page', $page);
    return json_encode($workouts);
});
