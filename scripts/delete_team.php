<?php
//delete team from database, get id from POST
if (isset($_POST['id_team'])) {
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'davay';
    $con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
    if (mysqli_connect_errno()) {
        exit('Failed to connect to MySQL: ' . mysqli_connect_error());
    }

    $id_team = $_POST['id_team'];
    
    //delete team from database
    $sql = "DELETE FROM dt_team WHERE id_team = $id_team";
    $result = mysqli_query($con, $sql);

    //delete team from match
    $sql = "UPDATE dt_match SET team1_id = NULL WHERE team1_id = '$id_team'";
    $result = mysqli_query($con, $sql);
    $sql = "UPDATE dt_match SET team2_id = NULL WHERE team2_id = '$id_team'";
    $result = mysqli_query($con, $sql);

    //delete team from player
    $sql = "DELETE FROM dt_player WHERE team_id = $id_team";
    $result = mysqli_query($con, $sql);

    if ($result) {
        header("Location: ../views/team.php");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}
?>