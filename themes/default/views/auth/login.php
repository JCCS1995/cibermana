<?php (defined('BASEPATH')) OR exit('No direct script access allowed'); ?><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?= $page_title.' | '.$Settings->site_name; ?></title>
    <link rel="shortcut icon" href="<?= $assets ?>images/icon1.png"/>
    <script type="text/javascript">if (parent.frames.length !== 0) { top.location = '<?=site_url('login')?>'; }</script>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="<?= $assets ?>bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= $assets ?>dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= $assets ?>plugins/iCheck/square/green.css" rel="stylesheet" type="text/css" />
</head>
<body background="themes/default/assets/images/background1.jpg">
    <div class="login-box">
        <div class="login-logo">
            <a href="<?=base_url();?>"><?= $Settings->site_name == 'TPV' ? '<b>TPV</b>' : '<img src="'.base_url('uploads/logo3.png').'" alt="'.$Settings->site_name.'" />'; ?></a>
        </div>
        <div class="login-box-body">
            <?php if($error)  { ?>
            <div class="alert alert-danger alert-dismissable">
                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                <?= $error; ?>
            </div>
            <?php } if($message) { ?>
            <div class="alert alert-success alert-dismissable"> 
                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>    
                <?= $message; ?>
            </div>
            <?php } ?>
            <p class="login-box-msg"><?= lang('login_to_your_account'); ?></p>
            <?= form_open("auth/login"); ?>
            <div class="form-group has-feedback">
                <input type="email" name="identity" value="<?= set_value('identity'); ?>" class="form-control" placeholder="<?= lang('email'); ?>" />
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="password" class="form-control" placeholder="<?= lang('password'); ?>" />
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>

            <button type="submit" class="btn btn-primary btn-block btn-flat"><i class="glyphicon glyphicon-log-in"></i> <?= lang('sign_in'); ?></button>

            <?= form_close(); ?>

           

            </div>
        </div>

     
              
    <script src="<?= $assets ?>plugins/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <script src="<?= $assets ?>bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<?= $assets ?>plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <script>
        $(function () {
            if ($('#identity').val())
                $('#password').focus();
            else
                $('#identity').focus();
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
                increaseArea: '20%'
            });
        });
    </script>
</body>
</html>
