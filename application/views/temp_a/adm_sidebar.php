<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-users-cog"></i>
        </div>
        <div class="sidebar-brand-text mx-3">ADMIN KPS</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('dashboard/index'); ?>">
            <i class="icofont-ui-home"></i>
            <span>Dashboard</span></a>
    </li>


    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Manajemen
    </div>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('tentangkami/index'); ?>">
            <i class="icofont-ui-user"></i>
            <span>Tentang Kami</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('layanan/index'); ?>">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Layanan</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('beritaadmin/index'); ?>">
            <i class="fas fa-fw fa-newspaper"></i>
            <span>Berita</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('kontak/index'); ?>">
            <i class="fas fa-fw fa-phone-square-alt"></i>
            <span>Kontak Kami</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('slideshow/index'); ?>">
            <i class="fas fa-fw fa-sliders-h"></i>
            <span>Slideshow</span></a>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('testimoni/index'); ?>">
            <i class="icofont-speech-comments"></i>
            <span>Testimoni</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('portofolio/index'); ?>">
            <i class="icofont-document-folder"></i>
            <span>Portofolio</span></a>
    </li>

    <hr class="sidebar-divider my-0">

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('auth/logout'); ?>">
            <i class="fas fa-fw fa-sign-out-alt"></i>
            <span>Logout</span></a>
    </li>




    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->