<div>
    <div class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h4 class="footer-heading">{{ $appSetting->website_name ?? 'Website Name' }}</h4>
                    <div class="footer-underline"></div>
                    <p>
                        {{ $appSetting->website_description ?? '' }}
                    </p>
                </div>
                <div class="col-md-3">
                    <h4 class="footer-heading">Quick Links</h4>
                    <div class="footer-underline"></div>
                    <div class="mb-2"><a href="{{ url('/') }}" class="text-white">Home</a></div>
                    <div class="mb-2"><a href="{{ url('/') }}" class="text-white">About Us</a></div>
                    <div class="mb-2"><a href="{{ url('/') }}" class="text-white">Contact Us</a></div>
                    <div class="mb-2"><a href="{{ url('/') }}" class="text-white">Blogs</a></div>
                    <div class="mb-2"><a href="{{ url('/') }}" class="text-white">Sitemaps</a></div>
                </div>
                <div class="col-md-3">
                    <h4 class="footer-heading">Shop Now</h4>
                    <div class="footer-underline"></div>
                    <div class="mb-2"><a href="{{ url('/collections') }}" class="text-white">Collections</a></div>
                    <div class="mb-2"><a href="{{ url('/new-arrivals') }}" class="text-white">New Arrivals</a></div>
                    <div class="mb-2"><a href="{{ url('/featured-products') }}" class="text-white">Featured Products</a></div>
                    <div class="mb-2"><a href="{{ url('/cart') }}" class="text-white">Cart</a></div>
                </div>
                <div class="col-md-3">
                    <h4 class="footer-heading">Reach Us</h4>
                    <div class="footer-underline"></div>
                    <div class="mb-2">
                        <p>
                            <i class="fa fa-map-marker"></i> {{ $appSetting->address ?? 'address' }}
                        </p>
                    </div>
                    <div class="mb-2">
                        <a href="" class="text-white">
                            <i class="fa fa-phone"></i> {{ $appSetting->phone1 ?? 'Phone 1' }}
                        </a>
                    </div>
                    <div class="mb-2">
                        <a href="" class="text-white">
                            <i class="fa fa-envelope"></i> {{ $appSetting->email1 ?? 'Email 1' }}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <p class=""> &copy; 2023 - Zeroone Technologies. All rights reserved.</p>
                </div>
                <div class="col-md-4">
                    <div class="social-media">
                        Get Connected:
                        {{ $appSetting->website_name ?? 'website name' }}
                        @if($appSetting->facebook)
                            <a href="{{ $appSetting->facebook }}" target="__blank"><i class="fa fa-facebook"></i></a>
                        @endif

                        @if($appSetting->twitter)
                            <a href="{{ $appSetting->twitter }}" target="__blank"><i class="fa fa-twitter"></i></a>
                        @endif

                        @if($appSetting->instagram)
                            <a href="{{ $appSetting->instagram }}" target="__blank"><i class="fa fa-instagram"></i></a>
                        @endif

                        @if($appSetting->youtube)
                            <a href="{{ $appSetting->youtube }}" target="__blank"><i class="fa fa-youtube"></i></a>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
