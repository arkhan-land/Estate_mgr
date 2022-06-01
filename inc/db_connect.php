<?php


    $mysql_hostname =
    $mysql_user =
    $mysql_password =
    $mysql_database =

    $db_connect = mysqli_connect($mysql_hostname, $mysql_user,$mysql_password, $mysql_database) or ("Could not connect database");
    mysqli_set_charset($db_connect,"Latin1_General_CI_AS");
?>
