@extends('op003.template.index')

@push('content')
    <!-- BANNER -->
    @php
        $banner = App\Models\PageSection::getFirstByCode('lanotte.home.banner', 'op003');
        $imagePath = str_replace('\\', '/', $banner->image);
    @endphp
    <section id="hero-9" class="bg-fixed hero-section division"
        style="background-image: url('{{ Storage::disk('public')->url($imagePath) }}')">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-md-8 col-lg-6">
                    <div class="hero-9-txt">
                        <h2>{{ $banner->title }}</h2>
                        <p class="p-title-md">{{ $banner->sub_title }}</p>

                        <a href="{{ setting('site.planity') }}" class="btn violet-red--btn tra-black--hover">Prendre
                            rendez-vous</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END BANNER -->

    <!-- SERVICES -->
    @php $preServices = App\Models\PageSection::getByCode('lanotte.home.pre-services', '') @endphp
    @if (sizeof($preServices) > 0)
        <section id="services-2" class="wide-70 services-section division">
            <div class="container">
                <div class="sbox-2-wrapper text-center">
                    <div class="row row-cols-1 row-cols-md-3">
                        @foreach ($preServices as $pservice)
                            <div class="col">
                                <div id="sb-2-1" class="sbox-2 mb-40 wow fadeInUp" data-wow-delay="0.3s">
                                    <!-- Icon -->
                                    <div class="sbox-ico ico-95 black--color">
                                        <span class="{{ $pservice->content_2 }}"></span>
                                    </div>

                                    <!-- Title -->
                                    <h5 class="h5-lg">{{ $pservice->title }}</h5>
                                    <p class="p-lg">{{ $pservice->sub_title }}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
    @endif
    <!-- END SERVICES -->

    <!-- ABOUT -->
    @php $about = App\Models\PageSection::getFirstByCode('lanotte.home.about', 'op001') @endphp
    <section id="about-3a" class="pt-100 about-section division">
        <div class="container">
            <div class="row d-flex align-items-center">

                <div class="col-md-5 col-lg-6 order-last order-md-2">
                    <div class="img-block left-column wow fadeInRight">
                        <img class="img-fluid" src="{{ Storage::disk('public')->url($about->image) }}"
                            alt="{{ setting('salon.store') }}">
                    </div>
                </div>

                <div class="col-md-7 col-lg-6 order-first order-md-2">
                    <div class="txt-block right-column wow fadeInLeft">
                        <div class="section-id">{{ $about->sub_title }}</div>

                        <h3 class="h3-md">{!! $about->title !!}</h3>
                        {!! $about->content !!}
                    </div>
                    <div class="txt-block txt-table right-column wow fadeInLeft">
                        <!-- Table -->
                        <table class="table">
                            <tbody>
                                @foreach ($openingHours as $hour)
                                    <tr>
                                        <td>{{ $hour->day }}</td>
                                        <td> - </td>
                                        <td class="text-end">{{ $hour->time }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END ABOUT -->

    <!-- PRICE -->
    @include('op003.template.price')
    <!-- END PRICE -->

    <!-- GALLERY -->
    @php $gallerySection = App\Models\PageSection::getFirstByCode('lanotte.gallery', '') @endphp
    @if ($gallerySection && sizeof($images) > 0)
        <section id="gallery-1" class="wide-60 inner-page-hero gallery-section division">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-8">
                        <div class="section-title title-01 mb-70">
                            <span class="section-id">{{ $gallerySection->sub_title }}</span>
                            <h2 class="h2-lg">{{ $gallerySection->title }}</h2>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 gallery-items-list">
                        <div class="masonry-wrap grid-loaded text-center">
                            @foreach ($images as $image)
                                <div class="masonry-image">
                                    <a class="image-link" href="{{ $image }}">
                                        <div class="hover-overlay">
                                            <img class="img-fluid" src="{{ $image }}"
                                                alt="{{ setting('salon.store') }}" />
                                            <div class="item-overlay"></div>
                                        </div>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    <!-- END GALLERY -->

    <!-- BANNER PROMOTION -->
    @php $promotionSection = App\Models\PageSection::getFirstByCode('lanotte.promotion', '') @endphp
    @if ($promotionSection)
        <section id="banner-3" class="bg-fixed banner-section division">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 col-lg-6">
                        <div class="banner-3-txt text-center">
                            <h5 class="h5-md">{!! $promotionSection->content !!}</h5>
                            <h2>{{ $promotionSection->title }}</h2>
                            <h4 class="h4-xs">{{ $promotionSection->sub_title }}</h4>
                            <a class="btn violet-red--btn tra-black--hover" href="{{ setting('site.planity') }}"
                                target="_blank" rel="noopener">Rendez-vous</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    <!-- END BANNER PROMOTION -->
@endpush
