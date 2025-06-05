<section id="about-4" class="pt-100 about-section division">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-md-6">
                <div class="img-block right-column wow fadeInLeft"
                    style="visibility: visible; animation-name: fadeInLeft;">
                    <img class="img-fluid" src="{{ Storage::disk('public')->url('common/polish.png') }}"
                        alt="{{ setting('site.store') }}">
                </div>
            </div>

            <div class="col-md-6 order-first order-md-2">
                <div class="txt-block right-column wow fadeInLeft">
                    <span class="section-id">Éclatant, Brillant, Impeccable</span>
                    <h3 class="h3-md">Faites briller votre journée avec vos ongles brillants</h3>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="pricing-6" class="bg--tra-img wide-70 pricing-section division">
    <div class="container">
        <div class="pricing-6-wrapper">
            <div class="row">
                @foreach ($groups as $key => $group)
                    <div class="col-lg-4">
                        <div
                            class="pricing-6-table wow fadeInUp {{ $key > 0 ? 'pl-25' : '' }} {{ $key < 2 ? 'pr-25' : '' }}">
                            <span class="section-id">{{ $group->title }}</span>
                            <h5 class="h5-xl pricing-title">{{ $group->description }}</h5>

                            <ul class="pricing-6-list">
                                @foreach ($group->services as $service)
                                    <li class="pricing-6-item">
                                        <div class="detail-price">
                                            <div class="price-name">
                                                <h5 class="h5-lg">{{ $service->title }}</h5>
                                            </div>
                                            <div class="price-dots"></div>
                                            <div class="price-number">
                                                <h5 class="h5-lg">{{ $service->price . '€' }}</h5>
                                            </div>
                                        </div>
                                        <div class="price-txt">
                                            <p>{{ $service->description . ($service->description ? ' | ' : '') }}
                                                <em>{{ $service->duration . 'min' }}</em></p>
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

<section id="pricing-1" class="white-smoke--shape pricing-section division">
    <div class="container">
        <div class="row d-flex align-items-center">
            <!-- PRICING IMAGE -->
            <div class="col-lg-6">
                <div class="pricing-1-img wow fadeInRight" style="visibility: visible; animation-name: fadeInRight;">
                    <img class="img-fluid" src="{{ Storage::disk('public')->url(setting('site.image_service')) }}" alt="{{ setting('site.store') }}">
                </div>
            </div>

            <div class="col-lg-6">
                <div class="pricing-1-wrapper wow fadeInLeft" style="visibility: visible; animation-name: fadeInLeft;">
                    <span class="section-id">{{ $lastGroup->title }}</span>
                    <h4 class="h4-lg pricing-title">{{ $lastGroup->description }}</h4>
                    <ul class="pricing-1-list">
                        @foreach ($lastGroup->services as $service)
                            <li class="pricing-1-item">
                                <div class="detail-price">
                                    <div class="price-name">
                                        <h5 class="h5-lg">{{ $service->title }}</h5>
                                    </div>
                                    <div class="price-dots"></div>
                                    <div class="price-number">
                                        <h5 class="h5-lg">{{ $service->price . '€' }}</h5>
                                    </div>
                                </div>
                                <div class="price-txt">
                                    <p>{{ $service->description . ($service->description ? ' | ' : '') }}
                                        <em>{{ $service->duration . 'min' }}</em></p>
                                </div>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
