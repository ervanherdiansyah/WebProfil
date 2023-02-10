{{-- Main Sidebar Container --}}
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <div class="brand-link">
        <img src="https://i.ibb.co/Yp4tr14/isteq-logo-remake.png" alt=""
            class="brand-image img-circle elevation-3">
        <span class="brand-text font-weight-light">Al-Istiqomah Cianjur</span>
    </div>
    {{-- <div class="brand-link text-center">
        <a href="{{ url('/admin/dashboard') }}">
            <img src="{{ asset('assets') }}/front/images/logo/Logo_Bagian-Kerjasama-dan-Pengembangan-Lembaga-250x50.png"
                alt="" style="width: 100%">
            <b class="brand-text" style="color: #fff;">KERJASAMA</b>
        </a>
    </div> --}}
    <!-- Sidebar -->
    <div class="sidebar" style="overflow-y: auto;">
    <div class="sidebar">
        {{-- Sidebar Menu --}}
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                <li class="nav-item menu-is-opening menu open">
                    <a href="{{ url('/admin/dashboard') }}"
                        class="nav-link {{ request()->is('admin/dashboard','admin/berita') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview" style="display:block; margin:10px">
                        <li class="nav-item">
                            <a href="{{ url('/admin/dashboard') }}"
                                class="nav-link {{ request()->is('admin/dashboard') ? 'active' : '' }}">
                                <i class="fas fa-home nav-icon"></i>
                                <p>Home</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('/admin/berita') }}"
                                class="nav-link {{ request()->is('admin/berita') ? 'active' : '' }}">
                                <i class="fas fa-newspaper nav-icon"></i>
                                <p>Berita</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/admin/tentangisteq') }}"
                        class="nav-link {{ request()->is('admin/tentangisteq') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-address-card"></i>
                        <p>
                            Tentang Isteq
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/admin/aksescepat') }}"
                        class="nav-link {{ request()->is('admin/aksescepat') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-forward"></i>
                        <p>
                            Akses Cepat
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/admin/pendaftaran') }}"
                        class="nav-link {{ request()->is('admin/pendaftaran') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-registered"></i>
                        <p>
                            Pendaftaran
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/admin/sma') }}"
                        class="nav-link {{ request()->is('admin/sma') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-school"></i>
                        <p>
                            SMA
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/admin/mts') }}"
                        class="nav-link {{ request()->is('admin/mts') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-school"></i>
                        <p>
                            MTS
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/admin/ra') }}" class="nav-link {{ request()->is('admin/ra') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-school"></i>
                        <p>
                            RA
                        </p>
                    </a>
                </li>
                <li class="nav-item menu-is-opening menu-open">
                    <a href=""
                        class="nav-link {{ request()->is('admin/profile', 'admin/updatepassword') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-cog"></i>
                        <p>
                            Setting
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview" style="display:block; margin:10px">
                        <li class="nav-item">
                            <a href="{{ url('/admin/profile') }}"
                                class="nav-link {{ request()->is('admin/profile') ? 'active' : '' }}">
                                <i class="fas fa-user-edit nav-icon"></i>
                                <p>Profile</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('/admin/updatepassword') }}"
                                class="nav-link {{ request()->is('admin/updatepassword') ? 'active' : '' }}">
                                <i class="fas fa-edit nav-icon"></i>
                                <p>Ubah Password</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('logout')}}"
                                class="nav-link">
                                <i class="fas fa-sign-out-alt nav-icon"></i>
                                <p>Logout</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
    <!-- /.sidebar -->
</aside>
