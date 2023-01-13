<html>

<head>
    <meta charset='utf-8'>
    <title>Home</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div id="navbar">
        <div class="nav-links">
                <a href="profile.php">My Profile</a>
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
        $teams_query = "SELECT * FROM dt_team JOIN dt_player ON dt_team.id_team = dt_player.team_id";
        $teams = $con->query($teams_query);
        $i = 1;
        while ($row = $teams->fetch_assoc()) {
            if ($i % 5 == 1) {
                echo '<div class="team-box">
                <h1 class="team-name">' . $row['team_name'] . '</h1>
                <div class="player-info">'
                    . $row['full_name'] . ' \'' . $row['game_nickname'] . '\'' . '
                    </div>';
            } else if ($i % 5 == 0) {
                echo '<div class="player-info">'
                    . $row['full_name'] . ' \'' . $row['game_nickname'] . '\'' . '
                    </div></div>';
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