<div class="wsmainfull menu clearfix">
    <div class="wsmainwp clearfix">
        <!-- HEADER LOGO -->
        <div class="desktoplogo"><a href="#hero-2" class="logo-black"><img
                    src="{{ Storage::disk('public')->url(setting('site.logo_secondary')) }}" alt="header-logo"></a></div>
        <div class="desktoplogo"><a href="#hero-2" class="logo-white"><img
                    src="{{ Storage::disk('public')->url(setting('site.logo')) }}" alt="header-logo"></a></div>

        <!-- MAIN MENU -->
        <nav class="wsmenu clearfix">
            <ul class="wsmenu-list">
                <li class="nl-simple" aria-haspopup="true"><a href="#hero-2">Accueil</a></li>
                <li class="nl-simple" aria-haspopup="true"><a href="#about-4">Tarifs</a></li>
                <li class="nl-simple" aria-haspopup="true"><a href="#gallery-1">Galerie</a></li>
                <li class="nl-simple" aria-haspopup="true"><a href="#footer-3">Contacter</a></li>
                <li class="nl-simple" aria-haspopup="true">
                    <a href="{{ setting('site.planity') }}" target="_blank"
                        class="btn violet-red--btn tra-white--hover last-link">Rendez-vous</a>
                </li>
            </ul>
        </nav>
        <!-- END MAIN MENU -->
    </div>
</div>
