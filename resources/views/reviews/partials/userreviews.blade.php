@extends('layouts.app')

@section('content')
    <div class="max-w-2xl mx-auto bg-white p-8 shadow-md rounded-md mt-10">
        <h1 class="text-3xl font-bold text-gray-800 mb-6">Your Reviews</h1>

        @if($reviews->isEmpty())
            <p class="text-gray-600">No reviews found.</p>
        @else
            <ul class="pl-6">
                @foreach($reviews as $review)
                    <li class="mb-10 border-b-2 border-gray-300 py-4">
                        <div class="flex items-center">
                            <div class="flex-shrink-0">
                            </div>
                            <div class="ml-2">
                                <p class="text-black text-2xl mt-1">Workout: {{ $review->workout->name }}</p>
                                <p class="text-lg my-4 font-semibold text-gray-800">Rating: {{ $review->rating }}</p>
                                <p class="text-gray-800">{{ $review->content }}</p>

                                <form action="{{ route('reviews.edit', $review->id) }}" method="GET" class="mt-2">
                                    <button type="submit" class="text-blue-500 hover:underline focus:outline-none">Edit Review</button>
                                </form>

                                <form action="{{ route('reviews.destroy', $review->id) }}" method="POST" class="mt-4">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="bg-red-500 text-white font-semibold py-2 px-4 rounded hover:bg-red-600 focus:outline-none focus:shadow-outline-red active:bg-red-800">
                                        Remove Review
                                    </button>
                                </form>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
        @endif
    </div>
@endsection
