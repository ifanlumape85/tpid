<header id="header" class="fixed-top">
    <div class="container d-flex justify-content-between">
        <div class="d-flex align-items-center">
            <a href="{{ route('home') }}" class="logo mr-2 mt-n2">
                <img src="{{ Storage::url($profile->image ?? null) }}" alt="" class="img-fluid">
            </a>
            <div>
                <a href="{{ route('home') }}" class="font-weight-bolder">
                    <h1 class="h4 text-bold">{{ $profile->name ?? null }}</h1>
                    <h6 class="mt-n2 text-white text-xs">Pemerintah Kabupaten Bolaang Mongondow</h6>
                </a>
            </div>
        </div>
        @include('layouts.frontend.nav')
    </div>
</header><!-- End Header -->