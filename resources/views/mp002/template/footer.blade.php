<!-- Main Footer -->
<footer class="main-footer" id="footer">
    <div class="pattern-layer-three" style="background-image: url(mp002/images/resource/pattern-6.png)"></div>
    <div class="auto-container">
        <!-- Widgets Section -->
        <div class="widgets-section">
            <div class="row clearfix">
                <!-- Big Column -->
                <div class="big-column col-lg-6 col-md-12 col-sm-12">
                    <div class="row clearfix">
                        <!--Footer Column-->
                        <div class="footer-column col-lg-6 col-md-6 col-sm-12">
                            <div class="footer-widget contact-widget">
                                <h6>{{ setting('foodily.store') }}</h6>
                                <div class="text">{{ setting('site.address') }}</div>
                                <ul class="contact-list">
                                    <li><span class="icon fa fa-send"></span><a
                                            href="mailto:{{ setting('site.mail') }}">{{ setting('site.mail') }}</a></li>
                                    <li><span class="icon fa fa-phone"></span><a
                                            href="tel:{{ setting('site.phone') }}">{{ setting('site.phone') }}</a></li>
                                </ul>
                            </div>
                        </div>

                        <!--Footer Column-->
                        <div class="footer-column col-lg-6 col-md-6 col-sm-12">
                            <div class="footer-widget links-widget">
                                <h6>Ressources</h6>
                                <ul class="footer-list">
                                    <li><a href="{{ route('home') }}">Accueil</a></li>
                                    <li><a href="{{ route('menu') }}">Menu</a></li>
                                    <li><a href="{{ route('privacy-policy') }}">Politique de confidentialité</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Big Column -->
                <div class="big-column col-lg-6 col-md-12 col-sm-12">
                    <div class="row clearfix">
                        <!--Footer Column-->
                        <div class="footer-column col-lg-6 col-md-6 col-sm-12">
                            <div class="footer-widget contact-widget">
                                <h6>Horaires</h6>
                                @foreach (App\Models\OpeningHour::getAll() as $hour)
                                    <div class="text">{{ $hour->day . ' : ' . $hour->time }}</div>
                                @endforeach
                            </div>
                        </div>

                        <!-- Footer Column -->
                        <div class="footer-column col-lg-6 col-md-6 col-sm-12">
                            <div class="footer-widget newsletter-widget">
                                <h6>Réseaux</h6>
                                <ul class="social-list">
                                    <li><a href="{{ setting('site.facebook') }}" target="_blank"><span
                                                class="icon fa fa-facebook"></span>facebook</a></li>
                                    <li><a href="{{ setting('site.instagram') }}" target="_blank"><span
                                                class="icon fa fa-instagram"></span>instagram</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <div class="footer-bottom">
            <div class="copyright">{!! setting('site.copyright') !!}</div>
        </div>
    </div>
</footer>
