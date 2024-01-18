<!-- workouts/search-results.blade.php -->
@extends('layouts.app')

@section('content')
    <h1 class="text-white text-3xl">Search Results for "{{ $query }}"</h1>

    @forelse($workouts as $workout)
    <div class="bg-white rounded-lg overflow-hidden shadow-md my-11">
                <img class="w-full h-48 object-cover object-center" src="{{ $workout->image_url }}" alt="{{ $workout->name }}">
                <div class="p-6">
                    <h2 class="font-bold text-xl mb-2">{{ $workout->name }}</h2>
                    <p class="text-gray-700 text-sm">{{ $workout->description }}</p>
                    <p class="text-gray-600 mt-2">Duration: {{ $workout->duration }} minutes</p>
                    <p class="text-gray-600 mt-2">Body Parts: {{ $workout->bodyparts->pluck('name')->implode(', ') }}</p>
                </div>
                <div class="bg-gray-100 p-4">
                <a href="{{ route('workouts.detail', ['id' => $workout->id]) }}" class="bg-blue-500 hover:bg-blue-700 text-white px-4 py-2 rounded-md"> View Workout</a>                
                </div>
            </div>
    @empty
        <p class="text-white text-3xl">No results found.</p>
    @endforelse
@endsection
