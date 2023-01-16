<html>
<?php
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_SESSION['loggedin'])) {
    header('Location:index.php');
}
?>
<head>
    <meta charset='utf-8'>
    <title>Team</title>
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
    <div class="team-wrapper">
        <?php
        $DATABASE_HOST = 'localhost';
        $DATABASE_USER = 'root';
        $DATABASE_PASS = '';
        $DATABASE_NAME = 'davay';
        $con = new mysqli($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
        if ($con->connect_error) {
            exit('Failed to connect to MySQL: ' . $con->connect_error);
        }
        $teams_query = "SELECT * FROM dt_team JOIN dt_player ON dt_team.id_team = dt_player.team_id JOIN dt_member ON dt_team.id_pendaftar = dt_member.id";
        $teams = $con->query($teams_query);
        $i = 1;
        while ($row = $teams->fetch_assoc()) {
            if ($i % 5 == 1) {
                echo '<div class="team-box">
                <h1 class="team-name">' . $row['team_name'] . " registered by " . "'" . $row['username'] . "'" .
                ' </h1> 
                <div class="player-info">'
                    . $row['full_name'] . ' \'' . "'" . $row['game_nickname'] . '\'' . '
                    </div>';
            } else if ($i % 5 == 0) {
                echo '<div class="player-info">'
                    . $row['full_name'] . ' \'' . $row['game_nickname'] . '\'' . '
                    </div>';
                    if ($_SESSION['adminin'] == 13) {
                        echo '<form action="../scripts/delete_team.php" method="post">
                        <input type="hidden" name="id_team" value="' . $row['id_team'] . '">
                        <input type="submit" value="Delete">
                        </form>';
                        echo '<form action="../views/edit_team.php" method="post">
                        <input type="hidden" name="id_team" value="' . $row['id_team'] . '">
                        <input type="submit" value="Edit">
                        </form>';
                    }
                echo '</div>';
            } else {
                echo '<div class="player-info">'
                    . $row['full_name'] . ' \'' . $row['game_nickname'] . '\'' . '
                    </div>';
            }
            $i++;
        }
        ?>
    </div>
</body>

</html>