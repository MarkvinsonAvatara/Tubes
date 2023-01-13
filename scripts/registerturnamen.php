<?php
session_start();
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'davay';
$con = new mysqli($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ($con->connect_error) {
    exit('Failed to connect to MySQL: ' . $con->connect_error);
}

$empty_matches_sql = "SELECT id_match, team1_id, team2_id FROM dt_match WHERE (team1_id is NULL OR team2_id is NULL) AND id_match <= 4";
$empty_matches = $con->query($empty_matches_sql);
if (mysqli_num_rows($empty_matches) == 0) {
    $SESSION['full_message'] = 'Maaf, turnamen sudah penuh';
    header('Location:../views/home.php');
} else {
    $team_name = $_POST['team_name'];
    //player1
    $full_name1 = $_POST['full_name1'];
    $game_name1 = $_POST['game_nickname1'];
    $email1 = $_POST['email1'];
    $telepon1 = $_POST['tlp1'];
    //player2
    $full_name2 = $_POST['full_name2'];
    $game_name2 = $_POST['game_nickname2'];
    $email2 = $_POST['email2'];
    $telepon2 = $_POST['tlp2'];
    //player3
    $full_name3 = $_POST['full_name3'];
    $game_name3 = $_POST['game_nickname3'];
    $email3 = $_POST['email3'];
    $telepon3 = $_POST['tlp3'];
    //player4
    $full_name4 = $_POST['full_name4'];
    $game_name4 = $_POST['game_nickname4'];
    $email4 = $_POST['email4'];
    $telepon4 = $_POST['tlp4'];
    //player5
    $full_name5 = $_POST['full_name5'];
    $game_name5 = $_POST['game_nickname5'];
    $email5 = $_POST['email5'];
    $telepon5 = $_POST['tlp5'];

    $user_id = $_SESSION['id'];
    $team_sql = "INSERT INTO dt_team (team_name, id_pendaftar) VALUE ('$team_name', '$user_id')";

    $team_query = $con->query($team_sql);
    $players_query = false;
    $team_id;

    if ($team_query) {
        $team_id = $con->insert_id;
        // echo $team_id;
        $players_sql = "INSERT INTO dt_player (full_name, game_nickname, email, phone_number, team_id) VALUES ('$full_name1', '$game_name1', '$email1', '$telepon1', '$team_id'), ('$full_name2', '$game_name2', '$email2', '$telepon2', '$team_id'), ('$full_name3', '$game_name3', '$email3', '$telepon3', '$team_id'), ('$full_name4', '$game_name4', '$email4', '$telepon4', '$team_id'), ('$full_name5', '$game_name5', '$email5', '$telepon5', '$team_id')";
        $players_query = $con->query($players_sql);
    }

    if ($players_query) {
        $empty_array = array();
        $i = 0;
        while ($row = $empty_matches->fetch_assoc()) {
            $empty_array[$i] = $row["id_match"];
            // echo("test");
            $i++;
        }
        $random_index = $empty_array[array_rand($empty_array, 1)];
        // echo $random_index;
        // print_r($empty_array);
        $empty_matches = $con->query($empty_matches_sql);
        while ($row = $empty_matches->fetch_assoc()) {
            echo "bariz ", $row["id_match"], "<br>";
            if ($row["id_match"] == $random_index && $row["team1_id"] == null) {
                $update_query = "UPDATE dt_match SET team1_id = $team_id WHERE id_match = $random_index";
                $con->query($update_query);
                break;
            } else if ($row["id_match"] == $random_index && $row["team2_id"] == null) {
                $update_query = "UPDATE dt_match SET team2_id = $team_id WHERE id_match = $random_index";
                $con->query($update_query);
                break;
            }
            // echo $row["id_match"];
        }
        //remove an array index from quarter_final
        // unset($quarter_final[$random_index]);
        // echo $empty_matches;
        header('Location:../views/match.php');
    }
}
?>