<section class="ftco-section bg-light" id="section-offer">
    <div class="container">

        <div class="row">
            <div class="col-md-12 text-center mb-5 ftco-animate">
                <h4 class="ftco-sub-title">Our Offers</h4>
                @foreach ($contents as $content)
                    @if ($content->category == 'Offer')
                        <h2 class="display-4">Offers &amp; Promos</h2>
                        <div class="row justify-content-center">
                            <div class="col-md-7">
                                <p class="lead">{{$content->description}}</p>
                            </div>
                        </div>
                    @endif
                @endforeach
                {{-- <h2 class="display-4">Offers &amp; Promos</h2> --}}
                {{-- <div class="row justify-content-center">
                    <div class="col-md-7">
                        <p class="lead">Far far away, behind the word mountains, far from the countries Vokalia
                            and Consonantia, there live the blind texts.</p>
                    </div>
                </div> --}}
            </div>
            <div class="col-md-12">
                <div class="owl-carousel ftco-owl">


                    @foreach ($offers as $offer)
                        <div class="item">
                            <div class="media d-block mb-4 text-center ftco-media ftco-animate border-0">
                                @if ($offer->image)
                                    <img src="{{ asset('storage/' . $offer->image->src) }}"
                                        alt="Free Template by Free-Template.co" class="img-fluid">
                                @endif
                                <div class="media-body p-md-5 p-4">
                                    <h5 class="text-primary">$
                                        {{ $offer->price }}
                                    </h5>
                                    <h5 class="mt-0 h4">
                                        {{ $offer->title }}
                                    </h5>
                                    <p class="mb-4">
                                        {{ $offer->description }}
                                    </p>
                                    <p class="mb-0"><a href="#" class="btn btn-primary btn-sm">Order
                                            Now!</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>

        </div>
    </div>
</section>
<!-- END section -->
