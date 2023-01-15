<?php
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_SESSION['loggedin'])) {
    header('Location:index.php');
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Teams</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
</head>

<body>
    <div id="navbar">
        <div class="nav-links">
            <a href="profile.php">Edit Members</a>
            <a href="team.php">Team</a>
            <a href="klasmen.php">Klasmen</a>
            <a href="match.php">Match</a>
            <a href="home.php">Home</a>
            <a href="logout.php">Logout</a>
        </div>
    </div>
    </div>
    <script src="Navbar_S.js"></script>
    <?php
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'davay';
    $con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);

    if (mysqli_connect_errno()) {
        die('Failed to connect to MySQL: ' . mysqli_connect_error());
    }

    //accept data from form
    $id_match = $_POST['id_match'];

    if ($stmt = $con->prepare('SELECT id_match, team1_id, team2_id, score1, score2, tipe_match FROM dt_match WHERE id_match = ?')) {
        $stmt->bind_param('s', $id_match);
        $stmt->execute();
        $stmt->store_result();
        if ($stmt->num_rows > 0) {
            $stmt->bind_result($id_match, $team1_id, $team2_id, $score1, $score2, $tipe_match);
            $stmt->fetch();
        } else {
            echo 'No account exists with that id.';
        }
        $stmt->close();
    } else {
        echo 'Could not prepare statement!';
    }

    echo '
        <form form action="../scripts/editMatch.php" method="post">
            <div class="container">
                <h1 id="editProf">Edit Match</h2>
                <!-- class="inputProfile" -->
                <h3 class="updateProfile">
                    <label>Team 1:</label>
                    <input type="text" name="team1_id" value="' . $team1_id . '"></input>
                </h3>
                <h3 class="updateProfile">
                    <label>Team 2:</label>
                    <input type="text" name="team2_id"value="' . $team2_id . '"></input>
                </h3>
                <h3 class="updateProfile">
                    <label>Score 1</label>
                    <input type="text" name="score1" value="' . $score1 . '"></input>
                </h3>
                <h3 class="updateProfile">
                    <label>Score 2:</label>
                    <input type="text" name="score2" value="' . $score2 . '"></input>
                </h3>
                <input type="hidden" name="id_match" value="' . $id_match . '"></input>

                <button class="btnUpdateProf" type="submit">
                    <!-- <input type="submit" value="Update Profile"></input> -->
                    Update Profile
                </button>  
            </div>    
        </form>';
    ?>
</body>

</html>