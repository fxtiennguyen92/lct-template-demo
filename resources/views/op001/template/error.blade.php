@extends('op001.template.index_blank_page')

@push('content')
    <div class="post-content">
        <div class="single-post-title text-center">
            <h2 class="h2-sm">@yield('title')</h2>
            <p class="post-tag">@yield('code') | @yield('message')</p>
        </div>

        @if (setting('site.error_banner'))
            <div class="blog-post-img mt-50 mb-50">
                <img class="img-fluid" src="{{ Storage::disk('public')->url(setting('site.error_banner')) }}"
                    alt="blog-post-image" />
            </div>
        @endif
    </div>
@endpush
