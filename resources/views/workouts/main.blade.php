@extends('layouts.app')

@section('content')

@include('workouts.partials.searchworkouts')
@include('workouts.partials.filterworkouts')
@include('workouts.partials.allworkouts')
    
@endsection
