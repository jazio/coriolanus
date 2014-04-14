#!/usr/bin/env drush

// -------------------------------------------------------
// Configuration
// -------------------------------------------------------
 
$dir_drupal = "demo";
$dir_theme = "demo/sites/all/themes";
$file_make = "coriolanus.make";
<?php
$db_user = "root";
$db_pass = "dev";
$db_name = "demo";
 
$site_name = "Demo Website";
$shortname = "demo";

$account_name = "admin";
$account_pass = "pass";
$account_email = "localhost@localhost.com";

// -------------------------------------------------------
// Make
// -------------------------------------------------------

$drush_make = "drush make -v $file_make $dir_drupal";

if (drush_shell_exec($drush_make)) {
    drush_print("Download Drupal and its components ...");
    drush_log('SUCCESS -- Folder created: '.$dir_drupal, 'ok');
} else {
    drush_shell_exec_output();
    drush_log('FAIL -- drush make', 'error');
    exit(0);
}