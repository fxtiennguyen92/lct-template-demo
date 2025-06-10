<section class="ftco-section" id="section-menu">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center mb-5 ftco-animate">
                @foreach ($contents as $content)
                    @if ($content->category == 'Menu')
                        <h2 class="display-4">
                            {{ $content->title }}
                        </h2>
                        <div class="row justify-content-center">
                            <div class="col-md-7">
                                <p class="lead">
                                    {{$content->description}}
                                </p>
                            </div>
                        </div>
                    @endif
                @endforeach


            </div>

            <div class="col-md-12 text-center">

                {{-- Tabs --}}
                <ul class="nav ftco-tab-nav nav-pills mb-5" id="pills-tab" role="tablist">
                    @foreach ($menus as $index => $menu)
                        @php $slug = Str::slug($menu->title); @endphp
                        <li class="nav-item ftco-animate">
                            <a class="nav-link {{ $index === 0 ? 'active' : '' }}" id="pills-{{ $slug }}-tab"
                                data-toggle="pill" href="#pills-{{ $slug }}" role="tab"
                                aria-controls="pills-{{ $slug }}"
                                aria-selected="{{ $index === 0 ? 'true' : 'false' }}">
                                {{ $menu->title }}
                            </a>
                        </li>
                    @endforeach
                </ul>


                {{-- Tab Contents --}}
                <div class="tab-content text-left">
                    @foreach ($menus as $index => $menu)
                        @php
                            $slug = Str::slug($menu->title);
                            $plats = $menu->plats;
                            $columns = $plats->chunk(ceil($plats->count() / 2));
                        @endphp

                        <div class="tab-pane fade {{ $index === 0 ? 'show active' : '' }}"
                            id="pills-{{ $slug }}" role="tabpanel"
                            aria-labelledby="pills-{{ $slug }}-tab">
                            <div class="row">
                                @foreach ($columns as $col)
                                    <div class="col-md-6 ftco-animate">
                                        @foreach ($col as $plat)
                                            <div class="media menu-item">
                                                <img class="mr-3 img-fluid"
                                                    src="{{ asset('storage/' . ($plat->image->src ?? 'images/default.jpg')) }}"
                                                    alt="{{ $plat->title }}">
                                                <div class="media-body">
                                                    <h5 class="mt-0">{{ $plat->title }}</h5>
                                                    <p>{{ $plat->description }}</p>
                                                    <h6 class="text-primary menu-price">
                                                        ${{ number_format($plat->price, 2) }}</h6>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @endforeach
                </div>

            </div>
        </div>
    </div>
</section>
<!-- END section -->
