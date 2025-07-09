<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- SITE TITLE -->
    <title>{{ setting('site.title') }}</title>

    <meta name="author" content="Licortech" />
    <meta name="description" content="{{ setting('site.description') }}" />

    <!-- FAVICON AND TOUCH ICONS -->
    <link rel="shortcut icon" href="{{ Storage::disk('public')->url(setting('foodily.icon')) }}" type="image/x-icon">
    <link rel="icon" href="{{ Storage::disk('public')->url(setting('foodily.icon')) }}" type="image/x-icon">
    <link rel="icon" href="{{ Storage::disk('public')->url(setting('foodily.icon')) }}" type="image/x-icon">
    <link rel="canonical" href="{{ config('app.url') }}" />

    <!-- META -->
    <meta property="og:title" content="{{ setting('site.title') }}" />
    <meta property="og:description" content="{{ setting('site.description') }}" />
    <meta property="og:image" content="{{ Storage::disk('public')->url(config('app.web_preview_image')) }}" />
    <meta property="og:url" content="{{ config('app.url') }}" />
    <meta property="og:type" content="website" />

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="{{ setting('site.title') }}" />
    <meta name="twitter:description" content="{{ setting('site.description') }}" />
    <meta property="twitter:image" content="{{ Storage::disk('public')->url(config('app.web_preview_image')) }}" />

    <!-- GOOGLE FONTS -->
    <link
        href="https://fonts.googleapis.com/css2?family=Niconne&amp;family=Poppins:wght@100;200;300;400;500;600;700;800;900&amp;family=Tangerine:wght@400;700&amp;display=swap"
        rel="stylesheet">

    <!-- STYLESHEET -->
    <link href="mp002/css/bootstrap.css" rel="stylesheet">
    <link href="mp002/css/style.css" rel="stylesheet">
    <link href="mp002/css/responsive.css" rel="stylesheet">
</head>

<body class="hidden-bar-wrapper">
    <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader">
            <img src="{{ Storage::disk('public')->url(setting('foodily.preloader')) }}"
                alt="{{ setting('site.title') }}" title="{{ setting('site.title') }}"></a>
        </div>
    </div>

    <!-- Mobile Menu  -->
    <div class="mobile-menu">
        <div class="menu-backdrop"></div>
        <div class="close-btn"><span class="icon flaticon-multiply"></span></div>

        <nav class="menu-box">
            <div class="nav-logo"><a href="{{ route('home') }}">
                    <img src="{{ Storage::disk('public')->url(setting('foodily.logo_secondary')) }}"
                        alt="{{ setting('site.title') }}" title="{{ setting('site.title') }}"></a>
            </div>
            <div class="menu-outer"></div>
        </nav>
    </div><!-- End Mobile Menu -->

    <!-- CONTENT -->
    @stack('content')
    <!-- END CONTENT -->

    <!-- FOOTER -->
    @include('mp002.template.footer')
    <!-- END FOOTER -->





    <!-- BACK TO TOP -->
    <div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-arrow-up"></span></div>

    <!-- EXTERNAL SCRIPTS -->
    <script src="mp002/js/jquery.js"></script>
    <script src="mp002/js/popper.min.js"></script>
    <script src="mp002/js/bootstrap.min.js"></script>
    <script src="mp002/js/jquery.fancybox.js"></script>
    <script src="mp002/js/appear.js"></script>
    <script src="mp002/js/parallax.min.js"></script>
    <script src="mp002/js/tilt.jquery.min.js"></script>
    <script src="mp002/js/jquery.paroller.min.js"></script>
    <script src="mp002/js/owl.js"></script>
    <script src="mp002/js/wow.js"></script>
    <script src="mp002/js/pagenav.js"></script>
    <script src="mp002/js/validate.js"></script>
    <script src="mp002/js/isotope.js"></script>
    <script src="mp002/js/nav-tool.js"></script>
    <script src="mp002/js/jquery-ui.js"></script>
    <script src="mp002/js/script.js"></script>
    <script src="mp002/js/custom.js"></script>
</body>
