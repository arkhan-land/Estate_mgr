<?php
session_start();
include("db_connect.php");
include("functions.php");

if($_SERVER['REQUEST_METHOD']=="POST")
{
    //SOMETHING WAS POSTED ,
    $naj_Login=$_POST['naj_Login'];
    $naj_Haslo=$_POST['naj_Haslo'];

    if(!empty($naj_Login)&& !empty($naj_Haslo))
    {
        //save to db
        $naj_ID=random_num(20);
        $query = "insert into em_najemcy (naj_ID,naj_Login,naj_Haslo) values ('$naj_ID','$naj_Login','$naj_Haslo')";
        mysqli_query($con,$query);
        header("Location: login.php") ;
        die;
    }else
    {
        echo"plese enter correct login and haslo ";
    }
}




?>


<!DOCTYPE html>
<html>

<head>

    <title>Rejestracja</title>


</head>
<body>
<style type="text/css">
    #text{
        height: 25px;
        border-radius: 5px;
        padding: 4px;
        border: solid thin #aaa;
        width: 100%;
    }
    #button{
        padding: 10px;
        width: 100px;
        color: white;
        background-color: lightcoral;
        border: none;
    }
    #box{
        background-color: antiquewhite;
        margin: auto;
        width: 300px;
        padding: 20px;
    }
</style>

<div id="box">
    <form method="post">
        <div style="font-size: 20px;margin: 10px;color: saddlebrown">Rejestracja</div>
        <input id="text" type="text" name="naj_Login"><br><br>
        <input id="text" type="password"name="naj_Haslo"><br><br>

        <input id="button" type="submit" value="Signup"><br><br>

        <a href="login.php">Wciśnij aby się zalogować</a><br><br>


    </form>
</div>
