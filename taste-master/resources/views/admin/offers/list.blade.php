{{-- <div class="item">
    <div class="media d-block mb-4 text-center ftco-media ftco-animate border-0">
        @foreach ($offers as $offer)
            @if ($offer->image)
                <img src="{{ asset('storage/' . $offer->image->src) }}" alt="Free Template by Free-Template.co"
                    class="img-fluid">
             
            @else
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
            </div>
            <br>
            <a href="{{ route('offers.edit', ['id' => $offer->id]) }}" role="button"> Edit </a>
            <br>
            @if ($offer->id)
                <form action="/offers/{{ $offer->id }}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-outline-primary" type="submit">Delete Offer</button>
                </form>
            @endif
        @endforeach

        <br>
        <a class="nav-link" aria-current="page" href="{{ route('offers.create') }}">Create a new offer</a>
    </div>
</div>
 --}}

 {{$offers}}
