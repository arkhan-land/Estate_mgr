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
        //read from db
        $query ="select * from em_najemcy where naj_Login='$naj_Login' limit 1";
        $result = mysqli_query($con,$query);
        if($result)
        {
            if ($result && mysqli_num_rows($result) > 0)
            {
                $user_data = mysqli_fetch_assoc($result);
                     if($user_data['naj_Haslo']===$naj_Haslo)
                     {
                        $_SESSION['naj_ID']=$user_data['naj_ID'];
                        header("Location: http://localhost/Estate_mgr/index.php") ;
                        die;
                     }
            }
        }
        echo"zly uzytkownik lub haslo  ";
    }else
    {
        echo"plese enter correct login and haslo ";
    }
}







?>


<!DOCTYPE html>
<html>

<head>

    <title>login</title>


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
        <div style="font-size: 20px;margin: 10px;color: saddlebrown">Login</div>
        <input id="text" type="text" name="naj_Login"><br><br>
        <input id="text" type="password"name="naj_Haslo"><br><br>

        <input id="button" type="submit" value="Login"><br><br>

        <a href="signup.php">Zarejestruj sie</a><br><br>


    </form>
</div>










</body>









</html>

