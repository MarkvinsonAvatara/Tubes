<?php
session_start();
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'davay';
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
    exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}
if (!isset($_POST['username'], $_POST['password'], $_POST['email'])) {
    echo "<script type='text/javascript'>alert('Please complete the registration form!')
    window.location = '../views/profile.php'</script>";
    exit();
}
if (empty($_POST['username']) || empty($_POST['password']) || empty($_POST['firstname']) || empty($_POST['lastname']) || empty($_POST['birth_date']) ||empty($_POST['email'])) {
    echo "<script type='text/javascript'>alert('Please complete the registration form!')
    window.location = '../views/profile.php'</script>";
    exit();
}
if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
    echo "<script type='text/javascript'>alert('Please complete the registration form!')
    window.location = '../views/profile.php'</script>";
    exit();
}
if (preg_match('/[A-Za-z0-9]+/', $_POST['username']) == 0) {
    echo "<script type='text/javascript'>alert('Please complete the registration form!')
    window.location = '../views/profile.php'</script>";
    exit();
}
if (strlen($_POST['password']) > 20 || strlen($_POST['password']) < 3) {
    echo "<script type='text/javascript'>alert('Please complete the registration form!')
    window.location = '../views/profile.php'</script>";
    exit();
}
// update user info
if ($stmt = $con->prepare('UPDATE dt_member SET username = ?, password = ?, email = ?, first_name = ?, last_name = ?, birth_date = ? WHERE id = ?')) {
    $stmt->bind_param('ssssssi',  $_POST['username'],$_POST['password'], $_POST['email'], $_POST['firstname'], $_POST['lastname'], $_POST['birth_date'], $_SESSION['id']);
    $stmt->execute();
    $stmt->close();
    echo "<script type='text/javascript'>alert('Edit Profile Success')
    window.location = '../views/profile.php'</script>";
}
$con->close();
?>
