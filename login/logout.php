<?php
session_start();

if(isset($_SESSION['naj_ID']));
{
    unset($_SESSION['naj_ID']);
}
header("Location: login.php");
    die;