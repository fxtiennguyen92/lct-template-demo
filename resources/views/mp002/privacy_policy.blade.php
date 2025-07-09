@extends('mp002.template.index')

@push('content')
    <!-- Header -->
    @include('mp002.template.header_2')
    <!-- End Header -->

    <!-- Page Title -->
    <section class="page-title" style="background-image: url('mp002/images/resource/background-6.jpg')">
        <div class="pattern-layer" style="background-image: url(mp002/images/main-slider/pattern-7.png)"></div>
        <div class="auto-container">
            <h2>{{ $page->title }}</h2>
            <ul class="page-breadcrumb">
                <li>Date de la dernière mise à jour: {{ $page->updated_at->format('d M, Y') }}</li>
            </ul>
        </div>
    </section>
    <!-- End Page Title -->

    <!-- Content Section -->
    <section class="milkshake-section">
        <div class="auto-container">
            <div class="inner-container">
                @if ($page->image)
                <div class="big-image">
                    <img src="{{ Storage::disk('public')->url($page->image) }}" alt="{{ setting('foodily.store') }}">
                </div>
                @endif
                <div class="lower-content" style="text-align: left; padding-bottom: 100px">
                    <div class="section-text">{{ setting('foodily.store') }}</div>
                    <div class="text">
                        {!! $page->body !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Content Section -->
@endpush
