<footer id="footer-3" class="1bg--deep-blue footer division">
    <div class="container 1white-smoke--color">
        <div class="row">
            <!-- FOOTER CONTACTS -->
            <div class="col-sm-6 col-lg-5">
                <div class="footer-contacts mb-30">
                    <h5 class="h5-md">{{ setting('site.store') }}</h5>
                    <p class="p-lg">{{ setting('site.address') }}</p>

                    <h4 class="h4-sm txt-700 mt-4"><a href="tel:{{ setting('site.phone') }}" class="rose--color">{{ setting('site.phone') }}</a></h4>

                    <ul class="foo-socials ico-20 text-center clearfix">
                        <li><a href="{{ setting('site.facebook') }}" class="ico-facebook" target="_blank"><span
                                    class="flaticon-facebook"></span></a></li>
                        <li><a href="{{ setting('site.instagram') }}" class="ico-twitter" target="_blank"><span
                                    class="flaticon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>

            <!-- FOOTER CONTACTS -->
            <div class="col-sm-6 col-lg-4">
                <div class="footer-info mb-30">
                    <h5 class="h5-md">Horaires</h5>

                    <p class="p-lg">Lundi - Vendredi: 09:00 - 19:00</p>
                    <p class="p-lg">Samedi: 09:00 - 18:00</p>
                </div>
            </div>

            <!-- FOOTER GOOGLE MAP -->
            <div class="col-sm-6 col-lg-3">
                <div class="google-map mb-30">
                    {!! setting('site.map') !!}
                </div>
            </div>
            <!-- END FOOTER GOOGLE MAP -->

        </div>
        <!-- END FOOTER CONTENT -->

        <!-- BOTTOM FOOTER -->
        <div class="bottom-footer">
            <div class="row align-items-center">

                <!-- FOOTER COPYRIGHT -->
                <div class="col">
                    <div class="footer-copyright">
                        <p class="p-md">{!! setting('site.copyright') !!}</p>
                    </div>
                </div>

                {{-- <div class="col">
                    <ul class="bottom-footer-list text-end">
                        <li class="first-li">
                            <p class="p-md"><a href="#">Privacy Policy</a></p>
                        </li>
                        <li class="last-li">
                            <p class="p-md"><a href="#">Terms &amp; Conditions</a></p>
                        </li>
                    </ul>
                </div> --}}
            </div>
        </div>
        <!-- BOTTOM FOOTER -->
    </div>
</footer>
