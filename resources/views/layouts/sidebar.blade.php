
<section class="sidebar">
    <ul class="sidebar-menu" data-widget="tree">
    <li class="header">MAIN NAVIGATION</li>
    @if (Auth::user()->hasRole('superadmin'))
        @include('layouts.menu_superadmin');
    @elseif(Auth::user()->hasRole('pelanggan'))
        @include('layouts.menu_pelanggan');
    @elseif(Auth::user()->hasRole('bidang'))
        @include('layouts.menu_bidang');
    @elseif(Auth::user()->hasRole('pptk'))
        @include('layouts.menu_pptk');
    @endif
    </ul>
</section>