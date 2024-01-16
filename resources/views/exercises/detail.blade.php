@extends('layouts.app')

@section('content')
    <div class="container mx-auto my-8">
        <div class="max-w-3xl mx-auto bg-white p-8 shadow-md rounded-md">

            <h1 class="text-3xl font-bold text-gray-800 mb-6">{{ $exercise->name }}</h1>

            <div class="mb-4">
                <h2 class="text-xl font-semibold text-gray-700 mb-2">Description:</h2>
                <p class="text-gray-600">{{ $exercise->description }}</p>
            </div>

            <div class="mb-4">
                <h2 class="text-xl font-semibold text-gray-700 mb-2">Workouts Including This Exercise:</h2>
                @if($exercise->workouts->isEmpty())
                    <p class="text-gray-600">No workouts include this exercise.</p>
                @else
                    <ul>
                        @foreach($exercise->workouts as $workout)
                            <li>
                                <a href="{{ route('workouts.detail', ['id' => $workout->id]) }}">{{ $workout->name }}</a> - 
                                Sets: {{ $workout->pivot->sets ?? 'N/A' }}, 
                                Reps: {{ $workout->pivot->reps ?? 'N/A' }}
                            </li>
                        @endforeach
                    </ul>
                @endif
            </div>
        </div>
    </div>
@endsection
