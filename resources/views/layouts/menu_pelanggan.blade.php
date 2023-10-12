<li class="{{ (request()->is('pelanggan/home')) ? 'active' : '' }}"><a href="/pelanggan/home"><i class="fa fa-home"></i> <span><i>Dashboard</i></span></a></li>
<li class="{{ (request()->is('gantipass*')) ? 'active' : '' }}"><a href="/gantipass"><i class="fa fa-key"></i> <span><i>Ganti Password</i></span></a></li>
<li class="{{ (request()->is('logout')) ? 'active' : '' }}"><a href="/logout"><i class="fa fa-sign-out"></i> <span><i>Logout</i></span></a></li>
