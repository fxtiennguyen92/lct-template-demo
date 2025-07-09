@extends('mp002.template.index')

@push('content')
    <!-- Header -->
    @include('mp002.template.header_2')
    <!-- End Header -->

    <!-- Page Title -->
    <section class="page-title" style="background-image: url('mp002/images/resource/background-6.jpg')">
        <div class="pattern-layer" style="background-image: url(mp002/images/main-slider/pattern-7.png)"></div>
        <div class="auto-container">
            <h2>Notre menu</h2>
        </div>
    </section>
    <!-- End Page Title -->

    <!-- Menu Section -->
    @php $menu = App\Models\PageSection::getFirstByCode('foodily.menu.official', 'mp002') @endphp
    <section class="menus-section style-two">
        <div class="auto-container">
            <!-- Sec Title -->
            <div class="sec-title centered">
                <h2>{!! $menu->title !!}</h2>
                <div class="separate"></div>
            </div>
            <div class="row clearfix">
                <!-- Menu Column -->
                <div class="menu-column col-lg-12 col-md-12 col-sm-12">
                    <div class="menu-wrapper inner-column">
                        <img src="{{ Storage::disk('public')->url($menu->image) }}"
                            alt="{{ setting('foodily.store') }}" title="{{ setting('foodily.store') }}"></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Menu Section -->
@endpush
