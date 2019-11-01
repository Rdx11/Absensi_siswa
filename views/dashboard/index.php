<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!--

Name        : Aplikasi Arsip Digital Siswa
Version     : v1.0.0
Description : Aplikasi untuk mengarsipkan data siswa secara digital.
Date        : 2019
Developer   : Imam Ikhlasul Jihad
Email       : imam.ikhlasul@gmail.com
-->
<!doctype html>
<html lang="id">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="shortcut icon" href="<?=site_url('assets/img/telkom2.gif')?>">
        <meta name="viewport" content="width=device-width, minimum-scale=1, initial-scale=1">
        <title><?=$title?></title>
        <?=link_tag('assets/css/bootstrap.css?ver=3.3.7')?>
        <?=link_tag('assets/css/style.css?ver=1.0.0')?>
        <?=link_tag('assets/css/dataTables.bootstrap.min.css?ver=1.10.15')?>
    </head>
    <body>
        <?php $this->load->view('include/nav.php') ?>
        <div class="container isi">
            <?php $this->load->view($content)?>
        </div>
        <?php $this->load->view('include/footer.php') ?>
    </body>
</html>
