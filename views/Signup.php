<?php
    if (!isset($_SESSION)) {
        session_start();
    }
    if(isset($_SESSION['loggedin'])){
        header('Location:index.php');
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Sign Up</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <style>
        body {
            font-family: sans-serif;
            background-repeat: no-repeat;
            background-size: cover;
            background-image: url("assets/login_bg_ril.png");
            background-repeat: no-repeat;
        }
        #content{
            border: 1px;
            border-style: solid;
            padding-left: 0px;
            padding-right: 0px;
            width: auto;
            padding-top: 30px;
            padding-bottom: 30px;
            background-color: white;
            margin-left: 35%;
            margin-right: 35%;
            margin-top: 11%
        }
    </style>
</head>
<body>
    <div align="center" id= "content">
        <h1>Sign Up</h1>    
        <form action="../scripts/register.php" method="post">
            First Name: <input type="text" name="firstname"></input>
            <br>
            <br>
            Last Name: <input type="text" name="lastname"></input>
            <br>
            <br>
            Email: <input type="email" name="email"></input>
            <br>
            <br>
            Username: <input type="text" name="username"></input>
            <br>
            <br>
            Password: <input type="password" name="password"></input>
            <br>
            <br>
            Confirm Password: <input type="password" name="confirm_pass"></input>
            <br>
            <br>
            Birth Date: <input type="date" value="Birth Date" name="birth_date"></input>
            <br>
            <br>
            <input type="submit" value="Sign up"></input>
        </form>
        <br>
        <a href="login.php" align="left">Have an account?</a>
</div>
</body>
</html>