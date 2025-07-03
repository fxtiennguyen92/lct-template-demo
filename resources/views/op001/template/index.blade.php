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
    <link rel="shortcut icon" href="{{ Storage::disk('public')->url(setting('salon.icon')) }}" type="image/x-icon">
    <link rel="icon" href="{{ Storage::disk('public')->url(setting('salon.icon')) }}" type="image/x-icon">
    <link rel="icon" href="{{ Storage::disk('public')->url(setting('salon.icon')) }}" type="image/x-icon">
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
    <link href="https://fonts.googleapis.com/css2?family=Catamaran:wght@300;400;500;700;800&display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&display=swap"
        rel="stylesheet">

    <!-- BOOTSTRAP CSS -->
    <link href="op001/css/bootstrap.min.css" rel="stylesheet">

    <!-- FONT ICONS -->
    <link href="op001/css/flaticon.css" rel="stylesheet">

    <!-- PLUGINS STYLESHEET -->
    <link href="op001/css/menu.css" rel="stylesheet">
    <link href="op001/css/dropdown-effects/fade-down.css" id="effect" media="all" rel="stylesheet">
    <link href="op001/css/magnific-popup.css" rel="stylesheet">
    <link href="op001/css/flexslider.css" rel="stylesheet">
    <link href="op001/css/owl.carousel.min.css" rel="stylesheet">
    <link href="op001/css/owl.theme.default.min.css" rel="stylesheet">
    <link href="op001/css/datetimepicker.min.css" rel="stylesheet">

    <!-- TEMPLATE CSS -->
    <link href="op001/css/style.css" rel="stylesheet">

    <!-- ON SCROLL ANIMATION -->
    <link href="op001/css/animate.css" rel="stylesheet">

    <!-- RESPONSIVE CSS -->
    <link href="op001/css/responsive.css" rel="stylesheet">
</head>

<body>
    <!-- PRELOADER SPINNER -->
    <div id="loading" class="violet-red-loading">
        <div id="loading-center">
            <div class="spinner">
                <div class="blob top"></div>
                <div class="blob bottom"></div>
                <div class="blob left"></div>
                <div class="blob move-blob"></div>
            </div>
        </div>
    </div>
    <!-- END SPINNER -->

    <!-- PAGE -->
    <div id="page" class="page">

        <!-- HEADER -->
        @include('op001.template.header')
        <!-- END HEADER -->

        <!-- CONTENT -->
        @stack('content')
        <!-- END CONTENT -->

        <!-- FOOTER -->
        @include('op001.template.footer')
        <!-- END FOOTER -->

    </div> <!-- END PAGE -->

    <!-- EXTERNAL SCRIPTS -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    {{-- <script src="op001/js/jquery-3.6.0.min.js"></script> --}}
    <script src="op001/js/bootstrap.min.js"></script>
    <script src="op001/js/modernizr.custom.js"></script>
    <script src="op001/js/jquery.easing.js"></script>
    <script src="op001/js/jquery.appear.js"></script>
    <script src="op001/js/jquery.scrollto.js"></script>
    <script src="op001/js/menu.js"></script>
    <script src="op001/js/materialize.js"></script>
    <script src="op001/js/datetimepicker.js"></script>
    <script src="op001/js/jquery.vide.min.js"></script>
    <script src="op001/js/imagesloaded.pkgd.min.js"></script>
    <script src="op001/js/isotope.pkgd.min.js"></script>
    <script src="op001/js/jquery.flexslider.js"></script>
    <script src="op001/js/owl.carousel.min.js"></script>
    <script src="op001/js/jquery.magnific-popup.min.js"></script>
    <script src="op001/js/jquery.validate.min.js"></script>
    <script src="op001/js/jquery.ajaxchimp.min.js"></script>
    <script src="op001/js/wow.js"></script>

    <script src="op001/js/custom.js"></script>

</body>

</html>
