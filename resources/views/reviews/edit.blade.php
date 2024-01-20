@extends('layouts.app')

@section('content')
    <div class="max-w-2xl mx-auto bg-white p-8 shadow-md rounded-md mt-10">
        <h1 class="text-3xl font-bold text-gray-800 mb-6">Edit Review</h1>

        <form action="{{ route('reviews.update', $review->id) }}" method="POST">
            @csrf
            @method('PUT')

            <div class="mb-4">
                <label for="rating" class="text-gray-800 block font-semibold">Rating:</label>
                <input type="number" name="rating" id="rating" value="{{ old('rating', $review->rating) }}" min="1" max="5" class="w-full border border-gray-300 p-2 rounded">
            </div>

            <div class="mb-4">
                <label for="content" class="text-gray-800 block font-semibold">Review:</label>
                <textarea name="content" id="content" rows="5" class="w-full border border-gray-300 p-2 rounded">{{ old('content', $review->content) }}</textarea>
            </div>

            <div class="flex items-center">
                <button type="submit" class="bg-blue-500 text-white font-semibold py-2 px-4 rounded hover:bg-blue-600 focus:outline-none focus:shadow-outline-blue active:bg-blue-800">
                    Update Review
                </button>
            </div>
        </form>
    </div>
@endsection
