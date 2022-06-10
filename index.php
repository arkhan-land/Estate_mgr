<?php


// superglobal variable session accessable on all our files

session_start();
include("login/db_connect.php");
include("login/functions.php");
$user_data = check_login($con); // nasza funkcja
?>

<!DOCTYPE html>
<html>

<head>

    <title>OUR weabsite</title>


</head>
<body>
        <h1>This is the index page </h1>
        <a href="login/logout.php">Logout</a>
        <br>
            Hello,<?php echo $user_data['naj_Login'];?>


</body>









</html>






?>

