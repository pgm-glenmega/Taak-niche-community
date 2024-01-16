<!-- resources/views/exercises/index.blade.php -->

<form action="{{ route('exercises.search') }}" method="GET" class="mb-4 flex justify-center my-20">
    <input 
        type="text" 
        name="query" 
        placeholder="Search exercises..." 
        class="border border-gray-300 px-3 py-2 rounded-md focus:outline-none focus:border-blue-500"
    >
    <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600 focus:outline-none">
        Search
    </button>
</form>
