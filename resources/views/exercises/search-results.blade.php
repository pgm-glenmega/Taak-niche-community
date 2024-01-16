<!-- exercises/search-results.blade.php -->
@extends('layouts.app')

@section('content')
    <h1 class="text-white text-3xl">Search Results for "{{ $query }}"</h1>

    @forelse($exercises as $exercise)
    <div class="bg-white rounded-lg overflow-hidden shadow-md my-11">
                <img class="w-full h-48 object-cover object-center" src="{{ $exercise->image_url }}" alt="{{ $exercise->name }}">
                <div class="p-6">
                    <h2 class="font-bold text-xl mb-2">{{ $exercise->name }}</h2>
                    <p class="text-gray-700 text-sm">{{ $exercise->description }}</p>
                    <p class="text-gray-600 mt-2">Duration: {{ $exercise->duration }} minutes</p>
                    <p class="text-gray-600 mt-2">Body Parts: {{ $exercise->bodyparts->pluck('name')->implode(', ') }}</p>
                </div>
                <div class="bg-gray-100 p-4">
                    <button class="bg-blue-500 text-white px-4 py-2 rounded-md">View exercise</button>
                </div>
            </div>
    @empty
        <p class="text-white text-3xl">No results found.</p>
    @endforelse
@endsection
