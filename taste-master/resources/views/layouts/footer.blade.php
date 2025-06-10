<footer class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-8">
                <div class="row">
                    @foreach ($contents as $content)
                        <div class="col-md ftco-animate">
                            <div class="ftco-footer-widget mb-4">
                                <h2 class="ftco-heading-2">{{ $content->title }}</h2>
                                @foreach ($content->subtitres as $sub)
                                    <ul class="list-unstyled">
                                        <li><a href="#" class="py-2 d-block">{{ $sub->label }}</a></li>

                                    </ul>
                                @endforeach

                            </div>
                        </div>
                    @endforeach

            <div class="col-md-4">
                <div class="ftco-footer-widget mb-4">
                    <ul class="ftco-footer-social list-unstyled float-md-right float-lft">
                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row ftco-animate">
            <div class="col-md text-left">
                <p>&copy; Taste 2018. All Rights Reserved. Made with <span class="icon-heart text-danger"></span> by <a
                        href="https://free-template.co/">Free-Template.co</a></p>
            </div>
        </div>
    </div>
</footer>
