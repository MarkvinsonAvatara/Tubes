<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Login</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
</head>

<body>
    <div class="login-wrapper">
        <div class="login-container">
            <h1>SIGN IN</h1>
            <form action="../scripts/authenticate.php" method="post" class="login-form">
                <div class="form-field">
                    <label for="username">Username</label>
                    <input type="text" name="username"></input>
                </div>
                <div class="form-field">
                    <label for="password">Password</label>
                    <input type="password" name="password"></input>
                </div>
                <button type="submit" class="login-button">SIGN IN</button>
            </form>
            <a href="Signup.html">Don't have an account?</a>
        </div>
    </div>
</body>

</html>