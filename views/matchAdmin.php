<?php
if (!isset($_SESSION)) {
    session_start();
}
if ($_SESSION['adminin'] == 0) {
    header('Location:home.php');
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
    $team1_id = $_POST['team1_id'];
    $team2_id = $_POST['team2_id'];
    $score1 = $_POST['score1'];
    $score2 = $_POST['score2'];
    $team1_name = $_POST['team1_name'];
    $team2_name = $_POST['team2_name'];


    echo '
        <form form action="../scripts/editMatch.php" method="post">
            <div class="container">
                <h1 id="editProf">Edit Match</h2>
                <!-- class="inputProfile" -->
                <h3 class="updateProfile">
                    <label>Team Home:</label>
                    <label>' . $team1_name . '</label>
                </h3>
                <h3 class="updateProfile">  
                <input type="text" name="score1" value="' . $score1 . '"></input>
                </h3>
                <h3 class="updateProfile">
                    <label>Team Away:</label>
                    <label>' .  $team2_name . '</label>
                </h3>
                <h3 class="updateProfile">
                    <input type="text" name="score2" value="' . $score2 . '"></input>
                </h3>
                <input type="hidden" name="id_match" value="' . $id_match . '"></input>
                <input type="hidden" name="team1_id" value="' . $team1_id . '"></input>
                <input type="hidden" name="team2_id" value="' . $team2_id . '"></input>

                <button class="btnUpdateProf" type="submit">
                    <!-- <input type="submit" value="Update Profile"></input> -->
                    Update Profile
                </button>  
            </div>    
        </form>';
    ?>
</body>

</html>