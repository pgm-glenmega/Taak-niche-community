<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Workout community</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-gray-100 dark:bg-gray-900">
            @include('layouts.navigation')

            <!-- Page Heading -->
            @if (isset($header))
                <header class="bg-white dark:bg-gray-800 shadow">
                    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                        {{ $header }}
                    </div>
                </header>
            @endif

            <!-- Page Content -->
            <main class="py-8 px-40">
            @yield('content')
            </main>

            <footer>
                <div class="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8">
                    <p class="text-center text-gray-400">Made with ❤️ by <a href="https://www.linkedin.com/in/glen-meganck-840488250/" class="text-blue-500 hover:text-blue-600">Glen Meganck <small>(student at artevelde hogeschool)</small></a></p>
                </div>
            </footer>
        </div>
    </body>
</html>
