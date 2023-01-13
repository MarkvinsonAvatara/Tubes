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
    exit('Please complete the registration form!');
}
if (empty($_POST['username']) || empty($_POST['password']) || empty($_POST['firstname']) || empty($_POST['lastname']) || empty($_POST['birth_date']) ||empty($_POST['email'])) {
    exit('Please complete the registration form');
}
if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
    exit('Email is not valid!');
}
if (preg_match('/[A-Za-z0-9]+/', $_POST['username']) == 0) {
    exit('Username is not valid!');
}
if (strlen($_POST['password']) > 20 || strlen($_POST['password']) < 3) {
    exit('Password must be between 3 and 20 characters long!');
}
// update user info
if ($stmt = $con->prepare('UPDATE dt_member SET username = ?, password = ?, email = ?, first_name = ?, last_name = ?, birth_date = ? WHERE id = ?')) {
    $stmt->bind_param('ssssssi',  $_POST['username'],$_POST['password'], $_POST['email'], $_POST['firstname'], $_POST['lastname'], $_POST['birth_date'], $_SESSION['id']);
    $stmt->execute();
    $stmt->close();
    header('Location: ../views/home.php');
}
$con->close();
?>
