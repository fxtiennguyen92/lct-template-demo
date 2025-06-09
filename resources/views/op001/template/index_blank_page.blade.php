<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- SITE TITLE -->
    <title>{{ setting('site.title') }} | @yield('title')</title>

    <meta name="author" content="Licortech" />
    <meta name="description" content="{{ setting('site.description') }}" />

    <!-- FAVICON AND TOUCH ICONS -->
    <link rel="shortcut icon" href="{{ Storage::disk('public')->url(setting('site.icon')) }}" type="image/x-icon">
    <link rel="icon" href="{{ Storage::disk('public')->url(setting('site.icon')) }}" type="image/x-icon">
    <link rel="icon" href="{{ Storage::disk('public')->url(setting('site.icon')) }}" type="image/x-icon">

    <!-- META -->
    <meta property="og:title" content="{{ setting('site.title') }}" />
    <meta property="og:description" content="{{ setting('site.description') }}" />
    <meta property="og:image" content="{{ Storage::disk('public')->url('common/web_bg.jpg') }}" />
    <meta property="og:url" content="{{ config('app.url') }}" />
    <meta property="og:type" content="website" />

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="{{ setting('site.title') }}" />
    <meta name="twitter:description" content="{{ setting('site.description') }}" />
    <meta property="twitter:image" content="{{ Storage::disk('public')->url('common/web_bg.jpg') }}" />

    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css2?family=Catamaran:wght@300;400;500;700;800&display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&display=swap"
        rel="stylesheet">

    <!-- BOOTSTRAP CSS -->
    <link href="{{ asset('op001/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- FONT ICONS -->
    <link href="{{ asset('op001/css/flaticon.css') }}" rel="stylesheet">

    <!-- PLUGINS STYLESHEET -->
    <link href="{{ asset('op001/css/menu.css') }}" rel="stylesheet">
    <link href="{{ asset('op001/css/dropdown-effects/fade-down.css') }}" id="effect" media="all"
        rel="stylesheet">

    <!-- TEMPLATE CSS -->
    <link href="{{ asset('op001/css/style.css') }}" rel="stylesheet">

    <!-- ON SCROLL ANIMATION -->
    <link href="{{ asset('op001/css/animate.css') }}" rel="stylesheet">

    <!-- RESPONSIVE CSS -->
    <link href="{{ asset('op001/css/responsive.css') }}" rel="stylesheet">
</head>

<body>
    <!-- PRELOADER SPINNER -->

    <!-- END SPINNER -->

    <!-- PAGE -->
    <div id="page" class="page">

        <!-- HEADER -->
        <header id="header" class="header white-menu navbar-dark">
            <div class="header-wrapper">
                <!-- MOBILE HEADER -->
                <div class="wsmobileheader clearfix">
                    <span class="smllogo"><a href="{{ route('home') }}"><img src="{{ Storage::disk('public')->url(setting('site.logo_secondary')) }}"
                            alt="mobile-logo" /></a></span>
                    {{-- <a id="wsnavtoggle" class="wsanimated-arrow"><span></span></a> --}}
                    <a href="tel:{{ setting('site.phone') }}" class="callusbtn ico-20"><span
                            class="flaticon-phone-call-1"></span></a>
                </div>

                <div class="wsmainfull menu clearfix centered-menu">
                    <div class="wsmainwp clearfix">
                        <!-- MAIN MENU -->
                        <nav class="wsmenu clearfix">
                            <ul class="wsmenu-list">
                                <!-- HEADER LOGO -->
                                <li aria-haspopup="true" class="wscenterlogo">
                                    <a href="{{ route('home') }}" class="logo-black"><img
                                            src="{{ Storage::disk('public')->url(setting('site.logo_secondary')) }}"
                                            alt="header-logo"></a>
                                    <a href="{{ route('home') }}" class="logo-white"><img
                                            src="{{ Storage::disk('public')->url(setting('site.logo')) }}"
                                            alt="header-logo"></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- END HEADER -->

        <!-- BODY -->
        <section id="single-post" class="wide-80 inner-page-hero blog-page-section division">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <!-- CONTENT -->
                        @stack('content')
                        <!-- END CONTENT -->
                    </div>
                </div>
            </div>
        </section>
        <!-- END BODY -->

        <!-- FOOTER -->
        @include('op001.template.footer')
        <!-- END FOOTER -->
    </div>
    <!-- END PAGE -->
</body>

</html>
