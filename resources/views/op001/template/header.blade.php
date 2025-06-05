<header id="header" class="header tra-menu navbar-light">
    <div class="header-wrapper">

        <!-- MOBILE HEADER -->
        <div class="wsmobileheader clearfix">
            <span class="smllogo"><img src="{{ Storage::disk('public')->url(setting('site.logo_secondary')) }}"
                    alt="mobile-logo" /></span>
            <a id="wsnavtoggle" class="wsanimated-arrow"><span></span></a>
            <a href="tel:{{ setting('site.phone') }}" class="callusbtn ico-20"><span
                    class="flaticon-phone-call-1"></span></a>
        </div>

        <!-- NAVIGATION MENU -->
        @include('op001.template.navigation')
        <!-- END NAVIGATION MENU -->

    </div>
</header>
