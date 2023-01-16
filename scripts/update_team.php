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

    
    $full_name[0] = $_POST['full_name1'];
    $full_name[1] = $_POST['full_name2'];
    $full_name[2] = $_POST['full_name3'];
    $full_name[3] = $_POST['full_name4'];
    $full_name[4] = $_POST['full_name5'];
    
    $game_nickname[0] = $_POST['game_nickname1'];
    $game_nickname[1] = $_POST['game_nickname2'];
    $game_nickname[2] = $_POST['game_nickname3'];
    $game_nickname[3] = $_POST['game_nickname4'];
    $game_nickname[4] = $_POST['game_nickname5'];


    $players_query = "SELECT * FROM dt_player WHERE team_id = $id_team";
    $players = $con->query($players_query);
    $i = 0;
    while ($row = $players->fetch_assoc()) {
        $id = $row['id_player'];
        $sql = "UPDATE dt_player SET full_name = '$full_name[$i]', game_nickname = '$game_nickname[$i]' WHERE id_player = $id";
        $result = mysqli_query($con, $sql);
        $i++;
    }
    if ($result) {
        header("Location: ../views/team.php");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
    mysqli_close($con);
?>