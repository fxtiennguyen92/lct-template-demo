@extends('mp002.template.index')

@push('content')
    <!-- Header -->
    @include('mp002.template.header')
    <!-- End Header -->

    <!-- Banner Section -->
    <section class="banner-section">
        <div class="pattern-layer" style="background-image: url(mp002/images/main-slider/pattern-1.png)"></div>
        <div class="main-slider-carousel owl-carousel owl-theme">
            @foreach (App\Models\PageSection::getByCode('foodily.home.banner', 'mp002') as $key => $banner)
                <div class="slide {{ $loop->last ? 'style-two' : '' }}">
                    <div class="auto-container">
                        <div class="row clearfix">
                            <!-- Content Column -->
                            <div class="content-column col-lg-6 col-md-12 col-sm-12">
                                <div class="inner-column">
                                    <h1>
                                        {!! $banner->title !!}
                                    </h1>
                                    <div class="text">{{ $banner->sub_title }}</div>
                                </div>
                            </div>

                            <!-- Image Column -->
                            <div class="image-column col-lg-6 col-md-12 col-sm-12">
                                <div class="inner-column">
                                    <div class="image">
                                        <img src="{{ Storage::disk('public')->url($banner->image) }}"
                                            alt="{{ setting('foodily.store') }}" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            @endforeach
        </div>

    </section>
    <!-- End Banner Section -->


    <!-- About Section -->
    @php $aboutSection = App\Models\PageSection::getFirstByCode('foodily.home.about', 'mp002') @endphp
    <section class="juice-section">
        <div class="section-text">{{ setting('foodily.store') }}</div>
        <div class="pattern-layer-two" style="background-image: url(mp002/images/resource/juice-glass.png)"></div>
        <div class="auto-container">
            <div class="row clearfix">
                <!-- Image Column -->
                <div class="image-column col-lg-7 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="image">
                            <img src="{{ Storage::disk('public')->url($aboutSection->image) }}"
                                alt="{{ setting('foodily.store') }}" />
                        </div>
                    </div>
                </div>

                <!-- Content Column -->
                <div class="content-column col-lg-5 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <!-- Sec Title -->
                        <div class="sec-title">
                            <div class="title">{{ $aboutSection->sub_title }}</div>
                            <h2>{!! $aboutSection->title !!}</h2>
                            <div class="separate"></div>
                            <div class="text">{!! $aboutSection->content !!}</div>

                            <h4 class="mb-2"><span class="theme_color">Horaires</span> d'ouverture</h4>
                            <ul class="list-style-two">
                                @foreach (App\Models\OpeningHour::getAll() as $hour)
                                    <li>{{ $hour->day.' : '.$hour->time }}</li>
                                @endforeach
                            </ul>
                        </div>

                        
                        <a href="{{ route('menu') }}" class="theme-btn btn-style-two clearfix">
                            <span class="icon"></span> {{ __('notre menu') }}</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End About Section -->

    <!-- Beverage Section -->
    @php $favouriteSection = App\Models\PageSection::getFirstByCode('foodily.home.favourite', 'mp002') @endphp
    <section class="beverage-section">
        <div class="auto-container">
            <!-- Sec Title -->
            <div class="sec-title centered">
                <div class="title">{!! $favouriteSection->sub_title !!}</div>
                <h2>{{ $favouriteSection->title }}</h2>
                <div class="separate"></div>
            </div>
            <div class="row clearfix">
                @foreach (App\Models\FavouriteItem::getAll('mp002') as $item)
                    <div class="beverage-block col-xl-3 col-lg-4 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image">
                                <img src="{{ Storage::disk('public')->url($item->image) }}" alt="{{ $item->name }}" />
                            </div>
                            <div class="lower-content">
                                <h6>{{ $item->name }}</h6>
                                <div class="products">{{ $item->content }}</div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <!-- Button Box -->
            <div class="button-box text-center">
                <a href="{{ route('menu') }}" class="theme-btn btn-style-two clearfix"><span
                        class="icon"></span>{{ __('notre menu') }}</a>
            </div>

        </div>
    </section>
    <!-- End Beverage Section -->
@endpush
