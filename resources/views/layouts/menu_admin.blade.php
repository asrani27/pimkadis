<li class="{{ (request()->is('admin/beranda')) ? 'active' : '' }}"><a href="/admin/beranda"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
<li class="{{ (request()->is('admin/bidang*')) ? 'active' : '' }}"><a href="/admin/bidang"><i class="fa fa-institution"></i> <span>Bidang</span></a></li>
<li class="{{ (request()->is('admin/program*')) ? 'active' : '' }}"><a href="/admin/program"><i class="fa fa-list"></i> <span>Program</span></a></li>
<li class="{{ (request()->is('admin/kegiatan*')) ? 'active' : '' }}"><a href="/admin/kegiatan"><i class="fa fa-list"></i> <span>Kegiatan</span></a></li>
<li class="{{ (request()->is('admin/subkegiatan*')) ? 'active' : '' }}"><a href="/admin/subkegiatan"><i class="fa fa-list"></i> <span>Sub Kegiatan</span></a></li>
<li class="{{ (request()->is('admin/capaian*')) ? 'active' : '' }}"><a href="/admin/capaian"><i class="fa fa-list"></i> <span>Capaian</span></a></li>
{{-- <li class="{{ (request()->is('admin/pptk*')) ? 'active' : '' }}"><a href="/admin/pptk"><i class="fa fa-users"></i> <span>PPTK</span></a></li> --}}
{{-- <li class="{{ (request()->is('admin/validasi*')) ? 'active' : '' }}"><a href="/admin/validasi"><i class="fa fa-check"></i> <span>Validasi Penginputan</span></a></li> --}}
<li class="{{ (request()->is('admin/laporan*')) ? 'active' : '' }}"><a href="/admin/laporan"><i class="fa fa-file"></i> <span>Laporan RFK</span></a></li>
<li class="{{ (request()->is('admin/laptriwulan*')) ? 'active' : '' }}"><a href="/admin/laptriwulan"><i class="fa fa-file"></i> <span>Laporan Triwulan</span></a></li>
<li class="{{ (request()->is('admin/perioderfk*')) ? 'active' : '' }}"><a href="/admin/perioderfk"><i class="fa fa-calendar"></i> <span>Periode RFK</span></a></li>
<li class="{{ (request()->is('admin/batas_input*')) ? 'active' : '' }}"><a href="/admin/batas_input"><i class="fa fa-calendar"></i> <span>Batas Input Pelaporan</span></a></li>