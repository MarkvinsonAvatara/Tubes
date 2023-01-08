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
        <a href="Member.php">Member</a>
        <a href="team.php">Team</a>
        <a href="klasmen.php">Klasmen</a>
        <a href="match.php">Match</a>
        <a href="index.php">Home</a>
    </div>
    <br>
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
    $matches_query = "SELECT * FROM dt_match";
    $matches = $con->query($matches_query);
    while ($row = $matches->fetch_assoc()) {
        if (isset($row["team1_id"]) && isset($row["team2_id"])) {
            echo '
            <div id="content_match">
                <div id="round">Team ' . $row["team1_id"] . '</div>
                <div class="match-title">
                    <h1>' . $row["tipe_match"] . '</h1>
                    <h2>VS</h2>
                </div>
                <div id="round">Team ' . $row["team2_id"] . '</div>
            </div>';
        } else if (isset($row["team1_id"]) && !isset($row["team2_id"])) {
            echo '
            <div id="content_match">
                <div id="round">Team ' . $row["team1_id"] . '</div>
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
                <div id="round">Team ' . $row["team2_id"] . '</div>
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
    ?>

</body>

</html>