@extends('layouts.app')

@section('content')
    <div class="flex mb-4">
        <form action="{{ route('workouts.main') }}" method="get">
            <button type="submit" name="body_part" value="" class="mr-2 {{ $selectedBodyPart === '' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">All Body Parts</button>
            <button type="submit" name="body_part" value="legs" class="mr-2 {{ $selectedBodyPart === 'legs' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Legs</button>
            <button type="submit" name="body_part" value="arms" class="mr-2 {{ $selectedBodyPart === 'arms' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Arms</button>
            <button type="submit" name="body_part" value="chest" class="mr-2 {{ $selectedBodyPart === 'chest' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Chest</button>
            <button type="submit" name="body_part" value="back" class="mr-2 {{ $selectedBodyPart === 'back' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Back</button>
            <button type="submit" name="body_part" value="shoulders" class="mr-2 {{ $selectedBodyPart === 'shoulders' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Shoulders</button>
            
        </form>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        @forelse ($workouts as $workout)
            <div class="bg-white rounded-lg overflow-hidden shadow-md">
                <img class="w-full h-48 object-cover object-center" src="{{ $workout->image_url }}" alt="{{ $workout->name }}">
                <div class="p-6">
                    <h2 class="font-bold text-xl mb-2">{{ $workout->name }}</h2>
                    <p class="text-gray-700 text-sm">{{ $workout->description }}</p>
                    <p class="text-gray-600 mt-2">Duration: {{ $workout->duration }} minutes</p>
                    <p class="text-gray-600 mt-2">Body Parts: {{ $workout->bodyparts->pluck('name')->implode(', ') }}</p>
                </div>
                <div class="bg-gray-100 p-4">
                    <button class="bg-blue-500 text-white px-4 py-2 rounded-md">Start Workout</button>
                </div>
            </div>
        @empty
            <p>No workouts found.</p>
        @endforelse
    </div>
@endsection