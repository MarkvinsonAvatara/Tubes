<?php
if (!isset($_SESSION)) {
    session_start();
}
if (isset($_SESSION['loggedin'])) {
    header('Location:home.php');
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Sign Up</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
</head>

<body>
    <div class="login-wrapper">
        <div class="login-container">
            <h1>SIGN UP</h1>
            <form action="../scripts/register.php" method="post" class="login-form">
                <div class="form-field">
                    <label for="firstname">First Name</label>
                    <input type="text" name="firstname"></input>
                </div>
                <div class="form-field">
                    <label for="lastname">Last Name</label>
                    <input type="text" name="lastname"></input>
                </div>
                <div class="form-field">
                    <label for="email">Email</label>
                    <input type="text" name="email"></input>
                </div>
                <div class="form-field">
                    <label for="username">Username</label>
                    <input type="text" name="username"></input>
                </div>
                <div class="form-field">
                    <label for="password">Password</label>
                    <input type="password" name="password"></input>
                </div>
                <div class="form-field">
                    <label for="confirm_pass">Confirm Password</label>
                    <input type="password" name="confirm_pass"></input>
                </div>
                <div class="form-field">
                    <label for="birth_date">Birth Date</label>
                    <input type="date" name="birth_date"></input>
                </div>
                <button type="submit" class="login-button">SIGN UP</button>
            </form>
            <a href="index.php">Have an account?</a>
        </div>
    </div>
</body>

</html>


</body>

</html>