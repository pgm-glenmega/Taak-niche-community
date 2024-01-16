@extends('layouts.app')

@section('content')
    <article class="max-w-2xl mx-auto bg-white p-8 shadow-md rounded-md mt-10">
        <h1 class="text-3xl font-bold text-gray-800 mb-6">Create Workout</h1>

        @if(session('success'))
            <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded-md mb-6">
                {{ session('success') }}
            </div>
        @endif

        <form action="{{ route('workouts.store') }}" method="post">
            @csrf

            <div class="mb-4">
                <label for="name" class="block text-sm font-medium text-gray-600">Workout Name</label>
                <input type="text" name="name" id="name" class="mt-1 p-2 border rounded-md w-full" required>
            </div>

            <div class="mb-3">
                <label for="duration" class="form-label">Duration (in minutes)</label>
                <input type="number" name="duration" id="duration" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="bodypart" class="block text-sm font-medium text-gray-600">Select Bodypart</label>
                <select name="bodypart" id="bodypart" class="mt-1 p-2 border rounded-md w-full" required>
                    @foreach($bodyparts as $bodypart)
                        <option value="{{ $bodypart->id }}">{{ $bodypart->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="mb-4">
                <label for="description" class="block text-sm font-medium text-gray-600">Workout Description</label>
                <textarea name="description" id="description" class="mt-1 p-2 border rounded-md w-full" rows="3" required></textarea>
            </div>

            <div class="mb-4">
                <label for="instructions" class="block text-sm font-medium text-gray-600">Workout instructions</label>
                <textarea name="instructions" id="instructions" class="mt-1 p-2 border rounded-md w-full" rows="3" required></textarea>
            </div>


            <div class="mb-3">
                <label class="block text-sm font-medium text-gray-600">Select Exercises</label>
                @foreach($exercises as $exercise)
                    <div class="flex items-center">
                        <input type="checkbox" name="exercises[]" id="exercise_{{ $exercise->id }}" value="{{ $exercise->id }}" class="exerciseCheckbox">
                        <label for="exercise_{{ $exercise->id }}" class="ml-2">{{ $exercise->name }}</label>

                        <div class="ml-2 setsRepsFields hidden">
                            <input type="number" name="sets[{{ $exercise->id }}]" placeholder="Sets" class="p-2 border rounded-md">
                            <input type="number" name="reps[{{ $exercise->id }}]" placeholder="Reps" class="ml-2 p-2 border rounded-md">
                        </div>
                    </div>
                @endforeach
            </div>

            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-md">Add Workout</button>
        </form>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var checkboxes = document.querySelectorAll('.exerciseCheckbox');

                checkboxes.forEach(function (checkbox) {
                    checkbox.addEventListener('change', function () {
                        var setsRepsFields = this.parentNode.querySelector('.setsRepsFields');
                        setsRepsFields.classList.toggle('hidden', !this.        checked);
                    });
                });
            });
        </script>
    </article>
@endsection
