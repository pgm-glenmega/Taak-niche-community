@extends('layouts.app')

@section('content')
    <article class="max-w-2xl mx-auto bg-white p-8 shadow-md rounded-md mt-10">
        <h1 class="text-3xl font-bold text-gray-800 mb-6">Write Review</h1>

        @if(session('success'))
            <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded-md mb-6">
                {{ session('success') }}
            </div>
        @endif

        <form action="{{ route('reviews.store', ['workout' => $workout->id]) }}" method="post">
            @csrf

            <div class="mb-3">
                <label for="rating" class="block text-sm font-medium text-gray-600">Rating</label>
                <input type="number" name="rating" id="rating" class="form-control" min="1" max="10" required>
            </div>

            <div class="mb-4">
                <label for="content" class="block text-sm font-medium text-gray-600">Review Content</label>
                <textarea name="content" id="content" class="mt-1 p-2 border rounded-md w-full" rows="3" required></textarea>
            </div>

            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-md">Submit Review</button>
        </form>
    </article>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var checkboxes = document.querySelectorAll('.exerciseCheckbox');

            checkboxes.forEach(function (checkbox) {
                checkbox.addEventListener('change', function () {
                    var setsRepsFields = this.parentNode.querySelector('.setsRepsFields');
                    setsRepsFields.classList.toggle('hidden', !this.checked);
                });
            });
        });
    </script>
@endsection
