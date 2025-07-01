@extends('op001.template.index')

@push('content')
    <!-- BANNER -->
    <section id="hero-2" class="bg-fixed hero-section division">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-md-7 col-lg-6">
                    <div class="hero-2-txt white--color wow fadeInRight">
                        <h2>Belle <br /><small><i>jusqu'au bout</i></small> <br /><span>des ongles</span></h2>
                        <a href="{{ setting('site.planity') }}" class="mt-4 btn violet-red--btn tra-white--hover"
                            target="_blank">Prendre rendez-vous</a>
                    </div>
                </div>

                <div class="col-md-5 col-lg-6">
                    <div class="hero-2-img wow fadeInLeft">
                        <img class="img-fluid" src="{{ Storage::disk('public')->url(setting('salon.home_banner')) }}"
                            alt="hero-image">
                    </div>
                </div>

            </div>
        </div>

        <div class="wave-shape-bottom">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 195">
                <path fill="#ffffff" fill-opacity="1" d="M0,192L1440,96L1440,320L0,320Z"></path>
            </svg>
        </div>
    </section>
    <!-- END BANNER -->



    <!-- ABOUT -->
    <section id="about-3a" class="pt-100 about-section division">
        <div class="container">
            <div class="row d-flex align-items-center">

                <div class="col-md-5 col-lg-6 order-last order-md-2">
                    <div class="img-block left-column wow fadeInRight">
                        <img class="img-fluid" src="{{ Storage::disk('public')->url(setting('salon.about_banner')) }}"
                            alt="about-image">
                    </div>
                </div>

                <div class="col-md-7 col-lg-6 order-first order-md-2">
                    <div class="txt-block right-column wow fadeInLeft">
                        <div class="section-id">Faites Briller Votre Style</div>

                        <h3 class="h3-md">Art Ongulaire d'Exception</h3>
                        <p class="p-lg">Nullam tempor sapien gravida donec and pretium ipsum porta integer justo an odio
                            velna vitae
                            auctor integer congue magna undo purus a pretium ligula rutrum magna egestas
                        </p>
                        <ul class="simple-list">
                            <li class="list-item">
                                <p class="p-lg">Aliquam vitae molestie at quisque sapien volutpat and justo, aliquet
                                    molestie purus
                                    efficitur ipsum
                                </p>
                            </li>
                            <li class="list-item">
                                <p class="p-lg">Sagittis congue augue magna risus mauris volutpat and egestas magna
                                    suscipit egestas a
                                    vitae purus
                                </p>
                            </li>
                        </ul>
                    </div>
                    <div class="txt-block txt-table right-column wow fadeInLeft">
                        <!-- Table -->
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td>Lundi - Vendredi</td>
                                    <td> - </td>
                                    <td class="text-end">09:00 - 19:00</td>
                                </tr>
                                <tr>
                                    <td>Samedi</td>
                                    <td> - </td>
                                    <td class="text-end">09:00 - 18:00</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END ABOUT -->

    <!-- SERVICES -->
    <section id="services-2" class="wide-70 services-section division">
        <div class="container">
            <div class="sbox-2-wrapper text-center">
                <div class="row row-cols-1 row-cols-md-3">
                    <div class="col">
                        <div id="sb-2-1" class="sbox-2 mb-40 wow fadeInUp" data-wow-delay="0.3s"
                            style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
                            <div class="sbox-ico ico-95 black--color">
                                <span class="flaticon-pedicure-1"></span>
                            </div>
                            <h5 class="h5-lg">Pose Capsule</h5>
                            <p class="p-lg">Ligula risus auctor tempus and dolor vitae undo purus semper sodales</p>
                        </div>
                    </div>
                    <div class="col">
                        <div id="sb-2-2" class="sbox-2 mb-40 wow fadeInUp" data-wow-delay="0.6s"
                            style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">
                            <div class="sbox-ico ico-95 black--color">
                                <span class="flaticon-nail-polish-3"></span>
                            </div>
                            <h5 class="h5-lg">Remplissage</h5>
                            <p class="p-lg">Ligula risus auctor tempus and dolor vitae undo purus semper sodales</p>
                        </div>
                    </div>
                    <div class="col">
                        <div id="sb-2-3" class="sbox-2 mb-40 wow fadeInUp" data-wow-delay="0.9s"
                            style="visibility: visible; animation-delay: 0.9s; animation-name: fadeInUp;">
                            <div class="sbox-ico ico-95 black--color">
                                <span class="flaticon-soak"></span>
                            </div>
                            <h5 class="h5-lg">Beauté des pieds</h5>
                            <p class="p-lg">Ligula risus auctor tempus and dolor vitae undo purus semper sodales</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END SERVICES -->

    <!-- PRICE -->
    @include('op001.template.price')
    <!-- END PRICE -->

    <!-- GALLERY -->
    <section id="gallery-1" class="wide-60 inner-page-hero gallery-section division">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-10 col-lg-8">
                    <div class="section-title title-01 mb-70">
                        <span class="section-id">Galerie</span>
                        <h2 class="h2-lg">Reste Magnifique</h2>
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
                                        <img class="img-fluid" src="{{ $image }}" alt="gallery-image" />
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
    <!-- END GALLERY -->

    <!-- BANNER PROMOTION -->
    {!! setting('salon.promotion_section') !!}
    <!-- END BANNER PROMOTION -->
@endpush
