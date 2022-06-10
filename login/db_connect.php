<?php
$dbhost="localhost";
$dbuser="root";
$dbpass="";
$dbname="estate_manager";

if(!$con=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname))
{
    die("failed to connect to db");
}
