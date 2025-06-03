<form action="{{ route('offers.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label for="title">Offer Title</label>
        <input type="text" name="title" id="title" class="form-control" placeholder="Enter offer title"
            value="{{ old('title') }}">
        @error('title')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>
    <div class="form-group mt-3">
        <label for="description">Description</label>
        <textarea name="description" id="description" class="form-control" rows="4" placeholder="Write description...">{{ old('description') }}</textarea>
        @error('description')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>

    <div class="form-group mt-3">
        <label for="price">Price</label>
        <input type="text" name="price" id="price" class="form-control" placeholder="Enter price"
            value="{{ old('price') }}">
        @error('price')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>

    <div class="form-group mt-3">
        <label for="image">Image</label>
        <input type="file" name="images" id="images" class="form-control-file">
        @error('image')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>


    <button type="submit" class="btn btn-primary mt-4">Create Offer</button>
</form>
