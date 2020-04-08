<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Auth Example</title>

        <link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('css/custom.css') }}">
        <script src="https://js.pusher.com/5.1/pusher.min.js"></script>
    </head>
    <body>
        <div id="app">
            <app></app>
        </div>
        <script>
            var BASE_URL = '{{ URL::to('/') }}';
        </script>
        <script src="{{ asset('js/app.js') }}"></script>
    </body>
</html>
