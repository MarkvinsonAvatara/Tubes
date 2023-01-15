<?php
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_SESSION['loggedin'])) {
    header('Location:index.php');
}
?>
<html>

<head>
    <meta charset='utf-8'>
    <title>Home</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div id="navbar">
        <div class="nav-links">
            <a href="profile.php">Edit My Profile</a>
            <a href="team.php">Team</a>
            <a href="klasmen.php">Klasmen</a>
            <a href="match.php">Match</a>
            <a href="home.php">Home</a>
            <a href="logout.php">Logout</a>
        </div>
    </div>
    <div class="content1">
        <h1>Welcome to Davay,The Competitive Overwatch Platform</h1>
        <a href="register.php"><button id="button1" type="submit" class="btn-large">Register</button></a>
    </div>
</body>

</html>