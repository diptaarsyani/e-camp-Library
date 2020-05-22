<section class="sidebar">
      <!-- Sidebar user panel -->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">

        <li class="header">BERANDA</li>
        <li class="menu-sidebar {{ (Request::path() == 'admin') ? 'active' : '' }}"><a href="{{ url('/') }}"><i class="fa fa-fw fa-home"></i> Home</span></a></li>
        <li class="menu-sidebar {{ (Request::path() == 'admin/profile') ? 'active' : '' }}"><a href="{{ url('/admin/profile') }}"><i class="fa fa-fw fa-address-card"></i> Profile</span></a></li>

        <li class="header">DATA</li>
            @if(\Auth::user()->status == 1)
            <li class="{{ (Request::path() == 'master/kategori') ? 'active' : '' }} menu-sidebar"><a href="{{ url('master/kategori') }}"><i class="fa fa-fw fa-list-alt"></i> Kategori</a></li>
            @endif
            <li class="{{ (Request::path() == 'mastser/buku') ? 'active' : '' }} menu-sidebar"><a href="{{ url('master/buku') }}"><i class="fa fa-fw fa-book"></i> Buku</a></li>
            @if(\Auth::user()->status == 1)
            <li class="menu-sidebar {{ (Request::path() == 'manage-anggota') ? 'active' : '' }}"><a href="{{ url('/manage-anggota') }}"><i class="fa fa-fw fa-users"></i> Anggota</span></a></li>
            @endif
        </li>

        <li class="header">TRANSAKSI</li>
        <li class="menu-sidebar {{ (Request::path() == 'pinjam-buku') ? 'active' : '' }}"><a href="{{ url('/pinjam-buku') }}"><i class="fa fa-fw fa-arrow-right"></i> Peminjaman Buku</span></a></li>
        <li class="menu-sidebar {{ (Request::path() == 'pengembalian-buku') ? 'active' : '' }}"><a href="{{ url('/pengembalian-buku') }}"><i class="fa fa-fw fa-arrow-left"></i> Pengembalian Buku</span></a></li>
        
        @if(\Auth::user()->status == 1 || \Auth::user()->status == 2)
        <li class="header">LAPORAN</li>
        <li class="menu-sidebar {{ (Request::path() == 'laporan') ? 'active' : '' }}"><a href="{{ url('/laporan') }}"><i class="fa fa-fw fa-file"></i> Laporan</span></a></li>
        @endif

        <li class="header">OTHER</li>
        <li class="menu-sidebar"><a href="{{ url('/keluar') }}"><span class="glyphicon glyphicon-log-out"></span> Logout</span></a></li>

      </ul>
    </section>