<?php
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'davay';
    $con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
    if (mysqli_connect_errno()) {
        exit('Failed to connect to MySQL: ' . mysqli_connect_error());
    }
    $id_team = $_POST['id_team'];
    
    $sql = "UPDATE dt_team SET team_name = '$_POST[team_name]' WHERE id_team = $id_team";
    $result = mysqli_query($con, $sql);

    if ($result) {
        header("Location: ../views/team.php");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
?>