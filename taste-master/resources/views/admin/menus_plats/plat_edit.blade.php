<form action="{{ route('plats.update', $plat->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <label for="">Plats</label>
    <input type="text" name="title" value="{{ $plat->title }}">
    <label for="">description</label>
    <textarea type="text" name="description" style="width: 100%; height: 200px; font-size: 14px; padding: 10px;">
            {{ $plat->description }}
    </textarea>
    <input type="text" name="price" value="{{ $plat->price}}">

    @if ($plat->image)
        <img src="{{ asset('storage/' . str_replace('public/', '', $plat->image->src)) }}" alt="Free Template by Free-Template.co" class="img-fluid">
    @endif
    <input id="images" name="images" type="file">
    <button class="btn btn-primary" type="submit">Submit</button>
</form>