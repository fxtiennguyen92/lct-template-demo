<section class="ftco-section" id="section-menu">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mb-5 ftco-animate">
                <h2 class="display-4">Today's Menu</h2>
                <div class="row justify-content-center">
                    <div class="col-md-7">
                        <p class="lead">Far far away, behind the word mountains, far from the countries Vokalia
                            and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-12 text-center">

                {{-- <ul class="nav ftco-tab-nav nav-pills mb-5" id="pills-tab" role="tablist">
                    @foreach ($menus as $menu)
                        <li class="nav-item ftco-animate">
                            <a class="nav-link active" id="pills-breakfast-tab" data-toggle="pill"
                                href="#pills-breakfast" role="tab" aria-controls="pills-breakfast"
                                aria-selected="true">
                                {{ $menu->title }}
                            </a>
                        </li>
                    @endforeach
                </ul> --}}
                <ul class="nav ftco-tab-nav nav-pills mb-5" id="pills-tab" role="tablist">
                    @foreach ($menus as $index => $menu)
                        @php
                            $slug = 'pills-' . Str::slug($menu->title); // ví dụ: "Breakfast" => "pills-breakfast"
                        @endphp
                        <li class="nav-item ftco-animate">
                            <a class="nav-link {{ $index == 0 ? 'active' : '' }}" id="{{ $slug }}-tab"
                                data-toggle="pill" href="#{{ $slug }}" role="tab"
                                aria-controls="{{ $slug }}"
                                aria-selected="{{ $index == 0 ? 'true' : 'false' }}">
                                {{ $menu->title }}
                            </a>
                        </li>
                    @endforeach
                </ul>

                <div class="tab-content text-left">
                    <div class="tab-pane fade show active" id="pills-breakfast" role="tabpanel"
                        aria-labelledby="pills-breakfast-tab">
                        <div class="row">
                            <div class="col-md-6 ftco-animate">
                                @foreach ($plats as $plat)
                                    <div class="media menu-item">
                                        @if ($plat->image)
                                            <img src="{{ asset('storage/' . $plat->image->src) }}" alt="Free Template"
                                                class="img-fluid">
                                        @endif

                                        <div class="media-body">
                                            <h5 class="mt-0">
                                                {{ $plat->title }}
                                            </h5>
                                            <p>
                                                {{ $plat->description }}
                                            </p>
                                            <h6 class="text-primary menu-price">${{ $plat->price }}</h6>
                                        </div>
                                    </div>
                                @endforeach


                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_2.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$24.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_3.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$14.50</h6>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6 ftco-animate">
                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_2.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$35.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_1.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Salted Fried Chicken</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$12.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_3.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$18.50</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-lunch" role="tabpanel" aria-labelledby="pills-lunch-tab">
                        <div class="row">
                            <div class="col-md-6 ftco-animate">

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_3.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$14.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_1.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Salted Fried Chicken</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$35.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_2.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$24.50</h6>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6 ftco-animate">

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_3.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$18.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_2.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$35.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_1.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Salted Fried Chicken</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$12.50</h6>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-dinner" role="tabpanel" aria-labelledby="pills-dinner-tab">
                        <div class="row">
                            <div class="col-md-6 ftco-animate">

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_2.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$24.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_1.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Salted Fried Chicken</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$35.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_3.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$14.50</h6>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6 ftco-animate">

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_3.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Fried Potato w/ Garlic</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$18.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_2.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Italian Sauce Mushroom</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$35.50</h6>
                                    </div>
                                </div>

                                <div class="media menu-item">
                                    <img class="mr-3" src="images/menu_1.jpg" class="img-fluid"
                                        alt="Free Template by Free-Template.co">
                                    <div class="media-body">
                                        <h5 class="mt-0">Salted Fried Chicken</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia
                                            and Consonantia, there live the blind texts.</p>
                                        <h6 class="text-primary menu-price">$12.50</h6>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- END section -->
