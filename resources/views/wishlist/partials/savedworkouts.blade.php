@extends('layouts.app')

@section('content')
    <div class="container mx-auto my-8">
        <h1 class="text-6xl font-bold text-white mb-6">Wishlist</h1>

        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-8">
            @forelse($wishlist as $workout)
                <div class="bg-white p-6 rounded-md shadow-md">
                    <h2 class="text-lg font-semibold mb-4">{{ $workout->name }}</h2>
                    <p class="text-gray-600 mb-4">{{ $workout->description }}</p>
                    
                    <div class="flex justify-between items-center">
                        <a href="{{ route('workouts.detail', ['id' => $workout->id]) }}" class="text-blue-500 hover:underline">View Details</a>
                        
                        <form action="{{ route('wishlist.remove', ['workout' => $workout->id]) }}" method="post">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="text-red-500 hover:underline">Remove</button>
                        </form>
                    </div>
                </div>
            @empty
                <p class="text-white text-2xl">No workouts in the wishlist.</p>
            @endforelse
        </div>
    </div>
@endsection
