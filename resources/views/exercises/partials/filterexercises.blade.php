<div class="flex my-8">
    <form action="{{ route('exercises.main') }}" method="get" class="flex-1">
        <button type="submit" name="body_part" value="{{ null }}" class="mr-2 flex-1 {{ is_null($selectedBodyPart) ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">All Body Parts</button>
        <button type="submit" name="body_part" value="legs" class="mr-2 flex-1 {{ $selectedBodyPart === 'legs' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Legs</button>
        <button type="submit" name="body_part" value="arms" class="mr-2 flex-1 {{ $selectedBodyPart === 'arms' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Arms</button>
        <button type="submit" name="body_part" value="chest" class="mr-2 flex-1 {{ $selectedBodyPart === 'chest' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Chest</button>
        <button type="submit" name="body_part" value="back" class="mr-2 flex-1 {{ $selectedBodyPart === 'back' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Back</button>
        <button type="submit" name="body_part" value="shoulders" class="flex-1 {{ $selectedBodyPart === 'shoulders' ? 'bg-blue-500 text-white' : 'bg-gray-300 text-gray-700' }} px-4 py-2 rounded-md">Shoulders</button>
    </form>
</div>
