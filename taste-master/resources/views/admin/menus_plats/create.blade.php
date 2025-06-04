<form action="{{ route('menus_plats.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-group" id="title_group">
        <label for="menu_id">Select Menu</label>
        <select name="menu_id" id="menu_id" class="form-control" onchange="toggleNewMenuInput(this.value)">
            <option value="">-- Choose a Menu --</option>
            @foreach ($menus as $menu)
                <option value="{{ $menu->id }}" {{ old('menu_id') == $menu->id ? 'selected' : '' }}>
                    {{ $menu->title }}
                </option>
            @endforeach
            <option value="new">+ New menu</option>
        </select>
        @error('menu_id')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>
    <div class="form-group mt-3" id="new_menu_title_group" style="display: none;">
        <label for="menu_title">New Title Menu</label>
        <input type="text" name="menu_title" id="menu_title" class="form-control" placeholder="Nhập tiêu đề menu mới"
            value="{{ old('menu_title') }}">
        @error('menu_title')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>

    <h4>Plat list : </h4>
    @foreach ($plats as $plat)
        <input class="form-check-input" type="checkbox" name="selected_plats[]" value="{{ $plat->id }}">
        <li> Title:
            {{ $plat->title }} - {{ $plat->price }}€
        </li>
        <li> Description:
            {{ $plat->description }}
        </li>
        @if ($plat->image)
            <img src="{{ asset('storage/' . $plat->image->src) }}" alt="Free Template" class="img-fluid">
        @endif
    @endforeach
    <br>
    <h4>Create a new plat</h4>
    <div class="form-group">
        <label for="new_title">Plat Title</label>
        <input type="text" name="new_title" id="new_title" class="form-control" placeholder="Enter offer title"
            value="{{ old('new_title') }}">
        @error('new_title')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>
    <div class="form-group mt-3">
        <label for="description">Description</label>
        <textarea name="new_description" id="new_description" class="form-control" rows="4"
            placeholder="Write description...">{{ old('description') }}</textarea>
        @error('new_description')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>

    <div class="form-group mt-3">
        <label for="new_price">Price</label>
        <input type="text" name="new_price" id="new_price" class="form-control" placeholder="Enter price"
            value="{{ old('new_price') }}">
        @error('new_price')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>

    <div class="form-group mt-3">
        <label for="new_image">Image</label>
        <input type="file" name="new_image" id="new_image" class="form-control-file">
        @error('new_image')
            <small class="text-danger">{{ $message }}</small>
        @enderror
    </div>


    <button type="submit" class="btn btn-primary mt-4">Save</button>
</form>
<script>
    function toggleNewMenuInput(value) {
        const newMenuInput = document.getElementById("new_menu_title_group");
        if (value === "new") {
            newMenuInput.style.display = "block";
            // title_group.style.display = "none";
        } else {
            newMenuInput.style.display = "none";
        }
    }

    // user submit lỗi
    window.onload = function() {
        if (document.getElementById("menu_id").value === "new") {
            document.getElementById("new_menu_title_group").style.display = "block";
        }
    };

    // alert("Script đã chạy");
</script>
