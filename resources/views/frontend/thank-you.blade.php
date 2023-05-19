@extends('layouts.app')

@section('title', 'Thank You for Shopping - Cluckoo')

@section('content')

<div class="py-3 pyt-md-4 mt-5 mb-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                @if (session('message'))
                    <h5 class="alert alert-success">{{ session('message') }}</h5>
                @endif
                <div class="p-4 shadow bg-white">
                    {{-- <h2>Your Logo</h2> --}}
                    <img class="dark w mb-4" src="{{ asset('admin/img/logo_dark.png') }}">
                    <h4>Thank you for Shopping with Cluckoo</h4>
                    <a href="{{ url('collections') }}" class="btn btn-primary">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
