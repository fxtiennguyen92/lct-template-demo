@extends('op001.template.index_blank_page')

@section('title', $page->title)

@push('content')
    <div class="post-content">
        <!-- TITLE -->
        <div class="single-post-title text-center">
            <h2 class="h2-sm">{{ $page->title }}</h2>
            <p class="post-tag">
                Date de la dernière mise à jour: {{ $page->updated_at->format('d M, Y') }}
            </p>

        </div>

        <!-- SINGLE POST IMAGE -->
        @if ($page->image)
            <div class="blog-post-img mt-50 mb-50">
                <img class="img-fluid" src="{{ Storage::disk('public')->url($page->image) }}" alt="blog-post-image"/>
            </div>
        @endif

        <!-- SINGLE POST TEXT -->
        <div class="single-post-txt">
            {!! $page->body !!}
        </div>
    </div>
@endpush
