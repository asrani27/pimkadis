
<!-- Navbar Right Menu -->
<div class="navbar-custom-menu">
<ul class="nav navbar-nav">
    <!-- Notifications Menu -->
    {{-- <li class="dropdown notifications-menu">
    <!-- Menu toggle button -->
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <i class="fa fa-bell-o"></i>
        <span class="label label-danger">10</span>
    </a>
    <ul class="dropdown-menu">
        <li class="header">You have 10 notifications</li>
        <li>
        <!-- Inner Menu: contains the notifications -->
        <ul class="menu">
            <li><!-- start notification -->
            <a href="#">
                <i class="fa fa-users text-aqua"></i> 5 new members joined today
            </a>
            </li>
            <!-- end notification -->
        </ul>
        </li>
        <li class="footer"><a href="#">View all</a></li>
    </ul>
    </li> --}}
    
    <!-- User Account Menu -->
    <li class="dropdown user user-menu">
    <!-- Menu Toggle Button -->
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <!-- The user image in the navbar-->
        <img src="/logo/icon-user.png" class="user-image" alt="User Image">
        <!-- hidden-xs hides the username on small devices so only the image appears. -->
        <span class="hidden-xs">{{Auth::user()->name}}</span>
    </a>
    <ul class="dropdown-menu">
        <!-- The user image in the menu -->
        <li class="user-header">
        <img src="/logo/icon-user.png" class="img-circle" alt="User Image">

        <p>
            {{Auth::user()->name}}
            <small>{{Auth::user()->roles()->first()->name}}</small>
        </p>
        </li>
        <!-- Menu Footer-->
        <li class="user-footer">
        <div class="pull-left">
            <a href="#" class="btn btn-default btn-flat">Profile</a>
        </div>
        <div class="pull-right">
            <a href="/logout" class="btn btn-default btn-flat">Logout</a>
        </div>
        </li>
    </ul>
    </li>
    
</ul>
</div>