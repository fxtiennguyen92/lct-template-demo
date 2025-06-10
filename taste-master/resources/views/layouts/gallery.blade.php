<section class="ftco-section" id="section-gallery">
    <div class="container">
        <div class="row ftco-custom-gutters">

            <div class="col-md-12 text-center mb-5 ftco-animate">
                @foreach ($contents as $content)
                    @if ($content->category == 'Gallery')
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

            @foreach ($galleryImages as $image)
                <div class="col-md-4 ftco-animate">
                    <a href="{{ asset('storage/' . $image->src) }}" class="ftco-thumbnail image-popup">
                        <img src="{{ asset('storage/' . $image->src) }}" alt="{{ $image->alt ?? 'Gallery Image' }}"
                            class="img-fluid">
                    </a>
                </div>
            @endforeach



        </div>
    </div>
</section>
<!-- END section -->
