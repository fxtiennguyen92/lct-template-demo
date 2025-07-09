<!-- Main Header-->
<header class="main-header header-style-one">

    <!-- Header Upper -->
    <div class="header-upper">
        <div class="auto-container clearfix">

            <div class="pull-left logo-box">
                <div class="logo">
                    <a href="{{ route('home') }}"><img src="{{ Storage::disk('public')->url(setting('foodily.logo')) }}"
                            alt="{{ setting('foodily.store') }}"></a>
                </div>
            </div>

            <div class="nav-outer clearfix">
                <!--Mobile Navigation Toggler-->
                <div class="mobile-nav-toggler"><span class="icon flaticon-menu"></span></div>
                <!-- Main Menu -->
                <nav class="main-menu navbar-expand-md">
                    <div class="navbar-header">
                        <!-- Toggle Button -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <div class="navbar-collapse collapse clearfix" id="navbarSupportedContent">
                        @include('mp002.template.menu')
                    </div>
                </nav>

                <!-- Main Menu End-->
                <div class="outer-box clearfix">
                    <a href="{{ setting('site.facebook') }}" target="_blank" class="search-box-btn search-box-outer">
                        <span class="icon fa fa-facebook"></span>
                    </a>
                    <a href="{{ setting('site.instagram') }}" target="_blank" class="nav-btn navSidebar-button">
                        <span class="icon fa fa-instagram"></span>
                    </a>

                    <a href="{{ setting('site.deliveroo') }}" target="_blank" class="nav-btn navSidebar-button" style="top: 0px">
                        <svg fill="#ffffff" width="20px" height="20px" viewBox="0 0 24 24" role="img"
                            xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">
                            <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                            <g id="SVGRepo_iconCarrier">
                                <title>Deliveroo</title>
                                <path
                                    d="M16.861 0l-1.127 10.584L13.81 1.66 7.777 2.926l1.924 8.922-8.695 1.822 1.535 7.127L17.832 24l3.498-7.744L22.994.636 16.861 0zM11.39 13.61a.755.755 0 01.322.066c.208.093.56.29.63.592.103.434.004.799-.312 1.084v.002c-.315.284-.732.258-1.174.113-.441-.145-.637-.672-.47-1.309.124-.473.71-.544 1.004-.549zm4.142.548c.447-.012.832.186 1.05.543.217.357.107.75-.122 1.143h-.002c-.229.392-.83.445-1.422.16-.399-.193-.397-.684-.353-.983a.922.922 0 01.193-.447c.142-.177.381-.408.656-.416Z">
                                </path>
                            </g>
                        </svg>
                    </a>
                </div>
            </div>

        </div>
    </div>
    <!--End Header Upper-->

    <!-- Sticky Header  -->
    <div class="sticky-header">
        <div class="auto-container clearfix">
            <!--Logo-->
            <div class="logo pull-left">
                <a href="{{ route('home') }}"><img
                        src="{{ Storage::disk('public')->url(setting('foodily.logo_secondary')) }}"
                        alt="{{ setting('foodily.store') }}"></a>
            </div>
            <!--Right Col-->
            <div class="pull-right">
                <!-- Main Menu -->
                <nav class="main-menu">
                </nav>
                <!-- Main Menu End-->

                <!-- Main Menu End-->
                <div class="outer-box clearfix">
                    <a href="{{ setting('site.deliveroo') }}" target="_blank" class="nav-btn navSidebar-button" style="top: 0px">
                        <svg fill="#000" width="20px" height="20px" viewBox="0 0 24 24" role="img"
                            xmlns="http://www.w3.org/2000/svg" stroke="#000">
                            <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                            <g id="SVGRepo_iconCarrier">
                                <title>Deliveroo</title>
                                <path
                                    d="M16.861 0l-1.127 10.584L13.81 1.66 7.777 2.926l1.924 8.922-8.695 1.822 1.535 7.127L17.832 24l3.498-7.744L22.994.636 16.861 0zM11.39 13.61a.755.755 0 01.322.066c.208.093.56.29.63.592.103.434.004.799-.312 1.084v.002c-.315.284-.732.258-1.174.113-.441-.145-.637-.672-.47-1.309.124-.473.71-.544 1.004-.549zm4.142.548c.447-.012.832.186 1.05.543.217.357.107.75-.122 1.143h-.002c-.229.392-.83.445-1.422.16-.399-.193-.397-.684-.353-.983a.922.922 0 01.193-.447c.142-.177.381-.408.656-.416Z">
                                </path>
                            </g>
                        </svg>
                    </a>
                    <a href="{{ setting('site.instagram') }}" target="_blank" class="nav-btn navSidebar-button">
                        <span class="icon fa fa-instagram"></span>
                    </a>
                    <a href="{{ setting('site.facebook') }}" target="_blank" class="nav-btn search-box-outer">
                        <span class="icon fa fa-facebook"></span>
                    </a>
                </div>
            </div>
        </div>
    </div><!-- End Sticky Menu -->

</header>
<!-- End Main Header -->
