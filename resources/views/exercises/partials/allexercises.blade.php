<article >
    <div class="flex justify-between items-center mb-8">
        <h1 class="text-5xl text-white font-bold">All exercises</h1>
        
    </div>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        @forelse ($exercises as $exercise)
            <div class="bg-white rounded-lg overflow-hidden shadow-md">
                <img class="w-full h-48 object-cover object-center" src="{{ $exercise->image_url }}" alt="{{ $exercise->name }}">
                <div class="p-6">
                    <h2 class="font-bold text-xl mb-2">{{ $exercise->name }}</h2>
                    <p class="text-gray-700 text-sm">{{ $exercise->description }}</p>
                    <p class="text-gray-600 mt-2">Body Parts: {{ $exercise->bodyparts->pluck('name')->implode(', ') }}</p>
                </div>
                <div class="bg-gray-100 p-4">
                    <a href="{{ route('exercises.detail', ['id' => $exercise->id]) }}" class="bg-blue-500 hover:bg-blue-700 text-white px-4 py-2 rounded-md">View Exercise</a>
                </div>
            </div>
        @empty
            <p class="text-white text-3xl">No exercises found.</p>
        @endforelse
    </div>
</article>
