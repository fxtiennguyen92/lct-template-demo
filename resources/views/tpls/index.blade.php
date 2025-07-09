@extends('voyager::master')

@section('page_title', __('Showroom'))

@section('css')
    <link href="css/templates.css" rel="stylesheet">
@endsection

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
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card">
                        <div class="card-body product-grid-header">
                            <a href="{{ route('templates.show', $template->code) }}" target="_blank"
                                class="product-image-wrapper">
                                <img class="img-fluid" src="{{ asset('storage/' . $template->image) }}" alt="asdfasdf">
                            </a>
                        </div>
                        <div class="card-footer">
                            <div class="mb-1 product-title">{{ $template->name . ' - ' . $template->code }}</div>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="d-flex align-items-center">{{ $template->category }}</span>
                                <span class="d-flex align-items-center">
                                    @if ($template->one_page_flg)
                                        <i class="voyager-photo" title="One-page"></i>
                                    @else
                                        <i class="voyager-photos" title="Multi-page"></i>
                                    @endif
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
