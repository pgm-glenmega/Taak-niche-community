@extends('layouts.app')

@section('content')
<div class="container mx-auto mt-8">
    <h1 class="text-4xl text-white font-bold mb-4">Edit Workout</h1>

    <!-- Form for editing workout -->
    <form action="{{ route('userworkouts.update', ['id' => $workout->id]) }}" method="post" class="max-w-md mx-auto bg-white p-6 rounded-md shadow-md">
        @csrf
        @method('PUT')

        <div class="mb-4">
            <label for="name" class="block text-sm font-medium text-gray-600">Workout Name</label>
            <input type="text" name="name" id="name" class="mt-1 p-2 border rounded-md w-full" value="{{ $workout->name }}" required>
        </div>

        <div class="mb-3">
            <label for="duration" class="block text-sm font-medium text-gray-600">Duration (in minutes)</label>
            <input type="number" name="duration" id="duration" class="mt-1 p-2 border rounded-md w-full" value="{{ $workout->duration }}" required>
        </div>

        <div class="mb-3">
            <label for="bodypart" class="block text-sm font-medium text-gray-600">Select Bodypart</label>
            <select name="bodypart" id="bodypart" class="mt-1 p-2 border rounded-md w-full" required>
                @foreach($bodyparts as $bodypart)
                    <option value="{{ $bodypart->id }}" {{ $bodypart->id == $workout->bodyparts->first()->id ? 'selected' : '' }}>{{ $bodypart->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-4">
            <label for="description" class="block text-sm font-medium text-gray-600">Workout Description</label>
            <textarea name="description" id="description" class="mt-1 p-2 border rounded-md w-full" rows="3" required>{{ $workout->description }}</textarea>
        </div>

        <div class="mb-4">
            <label for="instructions" class="block text-sm font-medium text-gray-600">Workout instructions</label>
            <textarea name="instructions" id="instructions" class="mt-1 p-2 border rounded-md w-full" rows="3" required>{{ $workout->instructions }}</textarea>
        </div>

        <div class="mb-3">
            <label class="block text-sm font-medium text-gray-600">Select Exercises</label>
            @foreach($exercises as $exercise)
                <div class="flex items-center">
                    <input type="checkbox" name="exercises[]" id="exercise_{{ $exercise->id }}" value="{{ $exercise->id }}" class="exerciseCheckbox" {{ in_array($exercise->id, $workout->exercises->pluck('id')->toArray()) ? 'checked' : '' }}>
                    <label for="exercise_{{ $exercise->id }}" class="ml-2">{{ $exercise->name }}</label>

                    <div class="ml-2 setsRepsFields hidden">
                        <input type="number" name="sets[{{ $exercise->id }}]" placeholder="Sets" class="p-2 border rounded-md">
                        <input type="number" name="reps[{{ $exercise->id }}]" placeholder="Reps" class="ml-2 p-2 border rounded-md">
                    </div>
                </div>
            @endforeach
        </div>

        <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white px-4 py-2 rounded-md">
            Update Workout
        </button>
    </form>

    <!-- Remove button -->
    <form action="{{ route('userworkouts.destroy', ['id' => $workout->id]) }}" method="post" class="mt-4">
        @csrf
        @method('DELETE')

        <button type="submit" class="bg-red-500 hover:bg-red-700 text-white px-4 py-2 rounded-md">
            Remove Workout
        </button>
    </form>

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
</div>
@endsection
