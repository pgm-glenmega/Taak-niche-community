@extends('layouts.app')

@section('content')
    <div class="container mx-auto my-8">
        <div class="max-w-3xl mx-auto bg-white p-8 shadow-md rounded-md">

            <h1 class="text-4xl font-bold text-gray-800 mb-6">{{ $workout->name }}</h1>

            <div class="mb-6">
                <h2 class="text-xl font-semibold text-gray-700 mb-2">Body Parts:</h2>
                <p class="text-gray-600">{{ $workout->bodyparts->pluck('name')->implode(', ') }}</p>
            </div>

            <div class="mb-6">
                <h2 class="text-xl font-semibold text-gray-700 mb-2">Description:</h2>
                <p class="text-gray-600">{{ $workout->description }}</p>
            </div>

            <div class="mb-6">
                <h2 class="text-xl font-semibold text-gray-700 mb-2">Instructions:</h2>
                <p class="text-gray-600">{{ $workout->instructions }}</p>
            </div>

            <div class="mb-6">
                <h2 class="text-xl font-semibold text-gray-700 mb-2">Attached Exercises:</h2>
                @if($workout->exercises->isEmpty())
                    <p class="text-gray-600">No exercises attached to this workout.</p>
                @else
                    <ul class="list-disc pl-6">
                        @foreach($workout->exercises as $exercise)
                            <li>
                                <span class="font-semibold">{{ $exercise->name }}</span> - 
                                Sets: {{ $exercise->pivot->sets ?? 'N/A' }}, 
                                Reps: {{ $exercise->pivot->reps ?? 'N/A' }}
                            </li>
                        @endforeach
                    </ul>
                @endif
            </div>

            <div class="mb-6">
                <h2 class="text-xl font-semibold text-gray-700 mb-2">Reviews:</h2>
                @if($workout->reviews->isEmpty())
                    <p class="text-gray-600">No reviews for this workout yet.</p>
                @else
                    <ul class="list-disc pl-6">
                        @foreach($workout->reviews as $review)
                            <li class="mb-4">
                                <span class="font-semibold">{{ $review->user->name }}</span> - 
                                Rating: {{ $review->rating }}<br>
                                {{ $review->content }}
                            </li>
                        @endforeach
                    </ul>
                @endif
            </div>

            <div class="mb-4">
                <a href="{{ route('reviews.create', ['workout' => $workout->id]) }}" 
                   class="bg-blue-500 text-white font-semibold py-2 px-4 rounded hover:bg-blue-600">
                    Write a Review
                </a>
            </div>

            <form action="{{ route('wishlist.add', ['workout' => $workout->id]) }}" method="post">
                @csrf
                <button type="submit" class="bg-green-500 text-white font-semibold py-2 px-4 rounded hover:bg-green-600">
                    Add to Wishlist
                </button>
                @if ($errors->has('error'))
                <script>
                    window.onload = function() {
                    alert("{{ $errors->first('error') }}");
                    }
                </script>
                @endif
            </form>
        </div>
    </div>
@endsection
