<li class="{{ (request()->is('superadmin/beranda')) ? 'active' : '' }}"><a href="/superadmin/beranda"><i class="fa fa-home"></i> <span><i>Dashboard</i></span></a></li>
{{-- <li class="{{ (request()->is('superadmin/tahun*')) ? 'active' : '' }}"><a href="/superadmin/tahun"><i class="fa fa-calendar"></i> <span><i>Tahun</i></span></a></li> --}}
<li class="{{ (request()->is('superadmin/kecamatan*')) ? 'active' : '' }}"><a href="/superadmin/kecamatan"><i class="fa fa-list"></i> <span><i>Kecamatan</i></span></a></li>
<li class="{{ (request()->is('superadmin/kelurahan*')) ? 'active' : '' }}"><a href="/superadmin/kelurahan"><i class="fa fa-list"></i> <span><i>Kelurahan</i></span></a></li>
<li class="{{ (request()->is('superadmin/kategori*')) ? 'active' : '' }}"><a href="/superadmin/kategori"><i class="fa fa-th"></i> <span><i>Kategori</i></span></a></li>
<li class="{{ (request()->is('superadmin/attribut*')) ? 'active' : '' }}"><a href="/superadmin/attribut"><i class="fa fa-th"></i> <span><i>Attribut</i></span></a></li>
<li class="{{ (request()->is('superadmin/tagging*')) ? 'active' : '' }}"><a href="/superadmin/tagging"><i class="fa fa-map-marker"></i> <span><i>Tagging / Marker</i></span></a></li>
<li class="{{ (request()->is('superadmin/faq*')) ? 'active' : '' }}"><a href="/superadmin/faq"><i class="fa fa-question"></i> <span><i>FAQ</i></span></a></li>
<li class="{{ (request()->is('gantipass*')) ? 'active' : '' }}"><a href="/gantipass"><i class="fa fa-key"></i> <span><i>Ganti Password</i></span></a></li>
<li class="{{ (request()->is('logout')) ? 'active' : '' }}"><a href="/logout"><i class="fa fa-sign-out"></i> <span><i>Logout</i></span></a></li>
