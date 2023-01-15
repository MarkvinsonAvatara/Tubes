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
if (!isset($_POST['team1_id'], $_POST['team2_id'], $_POST['score1'], $_POST['score2'])) {
    echo '<script type="text/javascript">alert("Please complete the registration form!");</script>';
    exit();
}

if ($stmt = $con->prepare('UPDATE dt_match SET team1_id = ?, team2_id = ?, score1 = ?, score2 = ? WHERE id_match = ?')) {
    $stmt->bind_param('sssss', $_POST['team1_id'], $_POST['team2_id'], $_POST['score1'], $_POST['score2'], $_POST['id_match']);
    $stmt->execute();
    echo '<script type="text/javascript">alert("Match updated successfully!");</script>';
    $stmt->close();
    header('Location: ../views/match.php');
} else {
    echo 'Could not prepare statement!';
}

$con->close();
?>
