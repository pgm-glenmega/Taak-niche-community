<?php


?>

<article class="">
    <h1 class="text-white text-5xl">All workouts</h1>

    

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 my-8">
        @foreach ($workouts as $workout)
        <section class="bg-white">
            <div class="relative items-center w-full px-5 py-6 mx-auto md:px-12 lg:px-24 max-w-7xl">
                <div class="grid w-full grid-cols-1 mx-auto">
                    <div class="max-w-md py-3 mx-auto">
                        <h1 class="mx-auto mb-8 text-2xl font-semibold leading-none tracking-tighter text-neutral-600 lg:text-3xl">{{$workout->name}}</h1>
                        <p class="mx-auto text-base leading-relaxed text-gray-500">{{$workout->duration}} minutes</p>
                    </div>
                </div>
            </div>
        </section>

        @endforeach
    </div>
</article>