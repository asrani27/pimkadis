<li class="{{ (request()->is('bidang/beranda')) ? 'active' : '' }}"><a href="/bidang/beranda"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
<li class="{{ (request()->is('bidang/program*')) ? 'active' : '' }}"><a href="/bidang/program"><i class="fa fa-clipboard"></i> <span>RFK Murni</span></a></li>
<li class="{{ (request()->is('bidang/pergeseran/program*')) ? 'active' : '' }}"><a href="/bidang/pergeseran/program"><i class="fa fa-clipboard"></i> <span>RFK Pergeseran</span></a></li>
<li class="{{ (request()->is('bidang/perubahan/program*')) ? 'active' : '' }}"><a href="/bidang/perubahan/program"><i class="fa fa-clipboard"></i> <span>RFK Perubahan</span></a></li>
{{-- <li class="{{ (request()->is('bidang/perubahan/program*')) ? 'active' : '' }}"><a href="/bidang/perubahan/program"><i class="fa fa-clipboard"></i> <span>RFK Perubahan</span></a></li> --}}
<li class="{{ (request()->is('bidang/realisasi*')) ? 'active' : '' }}"><a href="/bidang/realisasi"><i class="fa fa-clipboard"></i> <span>Realisasi</span></a></li>
<li class="{{ (request()->is('bidang/laporanrfk*')) ? 'active' : '' }}"><a href="/bidang/laporanrfk"><i class="fa fa-clipboard"></i> <span>RFK Laporan</span></a></li>
<li class="{{ (request()->is('bidang/kirimdata*')) ? 'active' : '' }}"><a href="/bidang/kirimdata"><i class="fa fa-send"></i> <span>Status Kirim Data</span></a></li>