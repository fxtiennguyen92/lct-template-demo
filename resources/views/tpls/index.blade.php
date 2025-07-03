@extends('voyager::master')

@section('page_title', __('Showroom'))

@section('breadcrumbs')
    <ol class="breadcrumb hidden-xs">
        <li class="active">
            <a href="{{ route('voyager.dashboard') }}"><i class="voyager-boat"></i> {{ __('voyager::generic.dashboard') }}</a>
        </li>
        <li class="active">
            <a href="{{ route('templates.index') }}">
                {{ __('Showroom') }}
            </a>
        </li>
    </ol>
@endsection

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-photos"></i>
        <p> {{ __('Showroom') }}</p>
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">
        <div class="row">
            @foreach ($templates as $template)
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <a href="{{ route('templates.show', $template->code) }}" target="_blank" class="">
                                <img class="img-fluid" src="{{ asset('storage/' . $template->image) }}" alt="asdfasdf">
                            </a>
                        </div>
                        <div class="card-footer">
                            <div class="fw-bold mb-1">{{ $template->code . ' - ' . $template->name }}</div>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="d-flex align-items-center">{{ $template->category }}</span>
                                @if ($template->one_page_flg)
                                    <i class="voyager-photo"></i>
                                @else
                                    <i class="voyager-photos"></i>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
