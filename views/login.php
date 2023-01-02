<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Login</title>
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
            margin-top: 14%
        }
    </style>
</head>
<body>
    <div align="center" id= "content">
        <h1>Sign in</h1>
        <form action="../scripts/authenticate.php" method="post">
            Username: <input type="text" name="username"></input>
            <br>
            <br>
            Password: <input type="password" name="password"></input>
            <br>
            <br>
            <input type="submit" value="Sign in"></input>
        </form>
        <br>
        <a href="Signup.html" align="left">Create Account</a>
</div>
</body>
</html>