@foreach ($menus as $menu)
    <div class="menu-block">
        @if (request('edit') == $menu->id)
            {{-- input edit title menu --}}
            <form action="{{ route('menus.update', $menu->id) }}" method="POST">
                @csrf
                @method('PUT')
                <input type="text" name="title" value="{{ $menu->title }}">
                <button type="submit" class="btn btn-sm btn-success">Save</button>
                <a href="{{ route('menus_plats') }}" class="btn btn-sm btn-secondary">Cancel</a>
            </form>
        @else
            {{-- Hiển thị tiêu đề bình thường --}}
            <h3>{{ $menu->title }}</h3>
            <a href="{{ route('menus_plats', ['edit' => $menu->id]) }}" class="btn btn-sm btn-outline-primary">Edit
                menu</a>
        @endif
        <br>
        <form action="{{ route('menus_plats.delete', $menu->id) }}" method="POST" style="display:inline;">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-link nav-link">Delete menu</button>
        </form>

        <br>
        <a class="nav-link" aria-current="page" href="{{ route('menus_plats.create') }}">Edit plats</a>
        <ul>
            @foreach ($menu->plats as $plat)
                <li> Title:
                    {{ $plat->title }} - {{ $plat->price }}€
                    <a href="{{ route('plats.edit', $plat->id) }}">Edit</a>
                    <form action="{{ route('plats.delete', $plat->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit">Delete Plat</button>
                    </form>
                </li>
                <li> Description:
                    {{ $plat->description }}
                </li>
                @if ($plat->image)
                    <img src="{{ asset('storage/' . $plat->image->src) }}" alt="Free Template" class="img-fluid">
                @endif
            @endforeach
        </ul>

        {{-- <a href="{{ route('menus.edit', $menu->id) }}">Edit Menu</a> --}}
        {{-- <form action="{{ route('menus.destroy', $menu->id) }}" method="POST">
            @csrf
            @method('DELETE')
            <button type="submit">Delete Menu</button>
        </form> --}}
    </div>
@endforeach

<br>
<a class="nav-link" aria-current="page" href="{{ route('menus_plats.create') }}">Create a new menu</a>
