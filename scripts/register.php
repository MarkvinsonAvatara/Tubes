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
if ($stmt = $con->prepare('SELECT id, password FROM dt_member WHERE username = ?')) {
    $stmt->bind_param('s', $_POST['username']);
    $stmt->execute();
    $stmt->store_result();
    if ($stmt->num_rows > 0) {
        echo 'Username exists, please choose another!';
    } else {
        if ($stmt = $con->prepare('INSERT INTO dt_member (first_name, last_name, email, username, password, birth_date) VALUES (?, ?, ?, ?, ?, ?)')) {
            $stmt->bind_param('ssssss', $_POST['firstname'], $_POST['lastname'], $_POST['email'], $_POST['username'],$_POST['password'], $_POST['birth_date']);
            $stmt->execute();
            echo 'You have successfully registered, you can now login!';
        } else {
            echo 'Could not prepare statement!';
        }
    }
    $stmt->close();
} else {
    echo 'Could not prepare statement!';
}
$con->close();
?>
