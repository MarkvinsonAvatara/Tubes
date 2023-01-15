<?php
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_SESSION['loggedin'])) {
    header('Location:index.php');
}
?>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Match</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
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
    <br>
    <?php
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'davay';
    $con = new mysqli($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
    if ($con->connect_error) {
        exit('Failed to connect to MySQL: ' . $con->connect_error);
    }
    $matches_query = "SELECT * FROM dt_match Join dt_team on dt_match.team1_id = dt_team.id_team";
    $matches = $con->query($matches_query);
    while ($row = $matches->fetch_assoc()) {
        if (isset($row["team1_id"]) && isset($row["team2_id"])) {
            echo '
            <div id="content_match">
                <div id="round">Team ' . $row["team_name"] . '</div>
                <div class="match-title">
                    <h1>' . $row["tipe_match"] . '</h1>
                    <h2>VS</h2>
                </div>
                <div id="round">Team ' . $row["team_name"] . '</div>
            </div>';
        } else if (isset($row["team1_id"]) && !isset($row["team2_id"])) {
            echo '
            <div id="content_match">
                <div id="round">Team ' . $row["team_name"] . '</div>
                <div class="match-title">
                    <h1>' . $row["tipe_match"] . '</h1>
                    <h2>VS</h2>
                </div>
                <div id="round">TBD</div>
            </div>';
        } else if (!isset($row["team1_id"]) && isset($row["team2_id"])) {
            echo '
            <div id="content_match">
                <div id="round">TBD</div>
                <div class="match-title">
                    <h1>' . $row["tipe_match"] . '</h1>
                    <h2>VS</h2>
                </div>
                <div id="round">Team ' . $row["team_name"] . '</div>
            </div>';
        } else if (!isset($row["team1_id"]) && !isset($row["team2_id"])) {
            echo '
            <div id="content_match">
                <div id="round">TBD</div>
                <div class="match-title">
                    <h1>' . $row["tipe_match"] . '</h1>
                    <h2>VS</h2>
                </div>
                <div id="round">TBD</div>
            </div>';

        }
    }
    //semi Final
    $score_checker_one_sql = "SELECT score1 From dt_match ";
    $score_checker_two_sql = "SELECT score2 From dt_match ";

    $score_checker_one = $con->query($score_checker_one_sql);
    $check_score_one = $score_checker_one->fetch_assoc();

    $score_checker_two = $con->query($score_checker_two_sql);
    $check_score_two = $score_checker_two->fetch_assoc();

    if (isset($check_score_one["score1"])==0 && (isset($check_score_two["score2"])==0)) {
        echo '
        <div id="content_match">
            <div id="round">Team ' . $row["team_name"] . '</div>
            <div class="match-title">
                <h1>' . $row["tipe_match"] . '</h1>
                <h2>VS</h2>
            </div>
            <div id="round">Team ' . $row["team_name"] . '</div>
        </div>';
    } else if (isset($check_score_one["score1"]) > isset($check_score_two["score2"]))  {
        echo '
        <div id="content_match">
            <div id="round">Team ' . $row["team_name"] . '</div>
            <div class="match-title">
                <h1>' . $row["tipe_match"] . '</h1>
                <h2>VS</h2>
            </div>
            <div id="round">TBD</div>
        </div>';
    } else if (isset($check_score_one["score1"]) < isset($check_score_two["score2"])) {
        echo '
        <div id="content_match">
            <div id="round">TBD</div>
            <div class="match-title">
                <h1>' . $row["tipe_match"] . '</h1>
                <h2>VS</h2>
            </div>
            <div id="round">Team ' . $row["team_name"] . '</div>
        </div>';
    } else if (!isset($check_score_one["score1"]) > !isset($check_score_two["score2"])) {
        echo '
        <div id="content_match">
            <div id="round">TBD</div>
            <div class="match-title">
                <h1>' . $row["tipe_match"] . '</h1>
                <h2>VS</h2>
            </div>
            <div id="round">TBD</div>
        </div>';
    }
    ?>

</body>

</html>