<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<div class="wrapper">
    <div class="header">
        <div class="logo">
            <img src="<?=site_url('assets/img/telkom.png')?>" alt="Logo">
        </div>
        <h1>Data Siswa</h1>
        <h3>SMK Telekomunikasi Darul Ulum</h3>
        <p>Cari data siswa Disini</p>
    </div>
    <div class="center">
        <?=form_open($action, 'class="form-inline"')?>
            <div class="form-group">
                <div class="input-group">
                <div class="input-group-addon md"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></div>
                    <input type="text" class="form-control md search" id="search" placeholder="NISN / Nama / Tanggal Lahir" autocomplete="off" required>
                </div>
            </div>
            <div id="hint">
                <p class="help-block">Masukkan NISN / nama / tanggal lahir dan hasil akan otomatis ditampilkan disini.<br>
            </div>
        <?=form_close()?>
    </div>
</div>
