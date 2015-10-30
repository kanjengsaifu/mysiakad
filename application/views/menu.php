<?php
if($class=='home'){
	$home = 'class="active"';
	$master ='';
	$transaksi = '';
	$laporan = '';
	$grafik = '';
}elseif($class=='master'){
	$home = '';
	$master ='class="active"';
	$transaksi = '';
	$laporan = '';
	$grafik = '';
}elseif($class=='transaksi'){
	$home = '';
	$master ='';
	$transaksi = 'class="active"';
	$laporan = '';
	$grafik = '';
}elseif($class=='laporan'){
	$home = '';
	$master ='';
	$transaksi = '';
	$laporan = 'class="active"';
	$grafik = '';					
}else{
	$home = '';
	$master ='';
	$transaksi = '';
	$laporan = '';
	$grafik = 'class="active"';
}
?>
<div class="main-container container-fluid">
<a class="menu-toggler" id="menu-toggler" href="#">
    <span class="menu-text"></span>
</a>
<div class="sidebar" id="sidebar">
    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <i class="icon-calendar"></i> 
			<?php 
			date_default_timezone_set('Asia/Jakarta');
			echo $this->model_global->hari_ini(date('w')).", ".$this->model_global->tgl_indo(date('Y-m-d'));
			?>
        </div>
        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>
            <span class="btn btn-info"></span>
            <span class="btn btn-warning"></span>
            <span class="btn btn-danger"></span>
        </div>
    </div><!--#sidebar-shortcuts-->
	
    <div align="center">
    <img src="<?php echo base_url();?>assets/img/logo-black.png" width="80">
    <h6><?php echo $this->config->item('nama_instansi');?></h6>
    </div>
    
    <ul class="nav nav-list">
        <li <?php echo $home;?> >
            <a href="<?php echo base_url();?>index.php/home">
                <i class="icon-dashboard"></i>
                <span class="menu-text"> Dashboard </span>
            </a>
        </li>
		
		
		<li <?php echo $master;?> >
            <a href="#" class="dropdown-toggle">
                <i class="icon-desktop"></i>
                <span class="menu-text"> Master Pusat</span>
                <b class="arrow icon-angle-down"></b>
            </a>
            <ul class="submenu">
                <li>
                    <a href="<?php echo base_url();?>index.php/jurusan">
                        <i class="icon-double-angle-right"></i>
                        Badan Hukum
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url();?>index.php/mata_kuliah">
                        <i class="icon-double-angle-right"></i>
                        Perguruan Tinggi
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/jurusan">
                        <i class="icon-double-angle-right"></i>
                        Program Studi
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/mahasiswa">
                        <i class="icon-double-angle-right"></i>
                        Pimpinan
                    </a>
                </li>
                
				<li>
                    <a href="<?php echo base_url();?>index.php/mahasiswa">
                        <i class="icon-double-angle-right"></i>
                        Teknisi Lab
                    </a>
                </li>
            </ul>
        </li>
		

        <li <?php echo $master;?> >
            <a href="#" class="dropdown-toggle">
                <i class="icon-desktop"></i>
                <span class="menu-text"> Master Akademik </span>
                <b class="arrow icon-angle-down"></b>
            </a>
            <ul class="submenu">
                <li>
                    <a href="<?php echo base_url();?>index.php/jurusan">
                        <i class="icon-double-angle-right"></i>
                        Program Studi
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/jurusan">
                        <i class="icon-double-angle-right"></i>
                        Kurikulum
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url();?>index.php/mata_kuliah">
                        <i class="icon-double-angle-right"></i>
                        Mata Kuliah
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/mata_kuliah">
                        <i class="icon-double-angle-right"></i>
                        Bobot Nilai
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/mata_kuliah">
                        <i class="icon-double-angle-right"></i>
                        Predikat
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/mata_kuliah">
                        <i class="icon-double-angle-right"></i>
                        Fasilitas Penunjang
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/mata_kuliah">
                        <i class="icon-double-angle-right"></i>
                        Batas SKS
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/mata_kuliah">
                        <i class="icon-double-angle-right"></i>
                        Kelas
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/mata_kuliah">
                        <i class="icon-double-angle-right"></i>
                        Jam Kuliah
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/dosen">
                        <i class="icon-double-angle-right"></i>
                        Dosen
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/mahasiswa">
                        <i class="icon-double-angle-right"></i>
                        Mahasiswa
                    </a>
                </li>
                
            </ul>
        </li>

		<li <?php echo $master;?> >
            <a href="#" class="dropdown-toggle">
                <i class="icon-desktop"></i>
                <span class="menu-text"> Master Civitas </span>
                <b class="arrow icon-angle-down"></b>
            </a>
            <ul class="submenu">
				<li>
                    <a href="<?php echo base_url();?>index.php/dosen">
                        <i class="icon-double-angle-right"></i>
                        Dosen
                    </a>
                </li>
				<li>
                    <a href="<?php echo base_url();?>index.php/mahasiswa">
                        <i class="icon-double-angle-right"></i>
                        Mahasiswa
                    </a>
                </li>
                
            </ul>
        </li>

        <li <?php echo $transaksi;?>>
			<a href="#" class="dropdown-toggle">
                <i class="icon-edit"></i>
                <span class="menu-text"> Transaksi </span>

                <b class="arrow icon-angle-down"></b>
            </a>

            <ul class="submenu">
                <li>
                    <a href="<?php echo base_url();?>index.php/jadwal">
                        <i class="icon-double-angle-right"></i>
                        Jadwal Kuliah
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url();?>index.php/krs">
                        <i class="icon-double-angle-right"></i>
                        Kartu Rencana Studi (KRS)
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url();?>index.php/nilai">
                        <i class="icon-double-angle-right"></i>
                        Nilai
                    </a>
                </li>
                 <li>
                    <a href="<?php echo base_url();?>index.php/mutasi_mhs">
                        <i class="icon-double-angle-right"></i>
                        Mutasi Mahasiswa
                    </a>
                </li>
                 <li>
                    <a href="<?php echo base_url();?>index.php/wisuda">
                        <i class="icon-double-angle-right"></i>
                        Wisuda
                    </a>
                </li>
            </ul>
        </li>

        <li <?php echo $laporan;?>>
            <a href="#" class="dropdown-toggle">
                <i class="icon-print"></i>
                <span class="menu-text"> Laporan </span>
                <b class="arrow icon-angle-down"></b>
            </a>

            <ul class="submenu">
            	 <li>
                    <a href="<?php echo base_url();?>index.php/lap_mahasiswa">
                        <i class="icon-double-angle-right"></i>
                        Mahasiswa
                    </a>
                </li>
                 <li>
                    <a href="<?php echo base_url();?>index.php/lap_dosen">
                        <i class="icon-double-angle-right"></i>
                        Dosen
                    </a>
                </li>
                 <li>
                    <a href="<?php echo base_url();?>index.php/lap_mata_kuliah">
                        <i class="icon-double-angle-right"></i>
                        Mata Kuliah
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url();?>index.php/lap_krs">
                        <i class="icon-double-angle-right"></i>
                        KRS
                    </a>
                </li>
                 <li>
                    <a href="<?php echo base_url();?>index.php/lap_absen">
                        <i class="icon-double-angle-right"></i>
                        Absensi
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url();?>index.php/lap_nilai">
                        <i class="icon-double-angle-right"></i>
                        Nilai
                    </a>
                </li>
                 <li>
                    <a href="<?php echo base_url();?>index.php/lap_mutasi_mhs">
                        <i class="icon-double-angle-right"></i>
                        Mutasi Mahasiswa
                    </a>
                </li>
                 <li>
                    <a href="<?php echo base_url();?>index.php/lap_wisuda">
                        <i class="icon-double-angle-right"></i>
                        Wisuda
                    </a>
                </li>
            </ul>
        </li>

        <li <?php echo $grafik;?>>
            <a href="#" class="dropdown-toggle">
                <i class="icon-bar-chart"></i>
                <span class="menu-text">
                    Grafik
                </span>
                <b class="arrow icon-angle-down"></b>
            </a>
            <ul class="submenu">
               	 <li>
                    <a href="<?php echo base_url();?>index.php/grafik/mhs">
                        <i class="icon-double-angle-right"></i>
                        Mahasiswa
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url();?>index.php/grafik/dosen">
                        <i class="icon-double-angle-right"></i>
                        Dosen
                    </a>
                </li>
                
                <li>
                    <a href="<?php echo base_url();?>index.php/grafik/mhs_aktif">
                        <i class="icon-double-angle-right"></i>
                        Mahasiswa Aktif
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url();?>index.php/grafik/krs">
                        <i class="icon-double-angle-right"></i>
                        KRS
                    </a>
                </li>

                <li>
                    <a href="<?php echo base_url();?>index.php/grafik/wisuda">
                        <i class="icon-double-angle-right"></i>
                        Wisuda
                    </a>
                </li>
            </ul>
        </li>
         <li>
            <a href="<?php echo base_url();?>index.php/login/logout">
                <i class="icon-off"></i>
                <span class="menu-text"> Keluar </span>
            </a>
        </li>
    </ul><!--/.nav-list-->

    <div class="sidebar-collapse" id="sidebar-collapse">
        <i class="icon-double-angle-left"></i>
    </div>
</div>