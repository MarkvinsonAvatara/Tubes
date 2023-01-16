<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Edit Team</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div id="navbar">
        <div class="nav-links">
            <a href="profile.php">Edit My Profile</a>
            <a href="team.php">Team</a>
            <a href="klasmen.php">Bracket</a>
            <a href="match.php">Match</a>
            <a href="home.php">Home</a>
            <a href="logout.php">Logout</a>
        </div>
    </div>
    </div>
    <?php
        $DATABASE_HOST = 'localhost';
        $DATABASE_USER = 'root';
        $DATABASE_PASS = '';
        $DATABASE_NAME = 'davay';
        $con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);

        if (mysqli_connect_errno()) {
            die('Failed to connect to MySQL: ' . mysqli_connect_error());
        }

        if ($stmt = $con->prepare('SELECT id_team, team_name, id_pendaftar, (SELECT username FROM dt_member WHERE id = id_pendaftar) AS naam_pendaftar FROM dt_team WHERE id_team = ?')) {
            $stmt->bind_param('s', $_POST['id_team']);
            $stmt->execute();
            $stmt->store_result();
            if ($stmt->num_rows > 0) {
                $stmt->bind_result($id_team, $team_name, $id_pendaftar, $nama_pendaftar);
                $stmt->fetch();
            } else {
                echo 'No account exists with that id.';
            }
            $stmt->close();
        } else {
            echo 'Could not prepare statement!';
        }
        echo '
            <form action="../scripts/update_team.php" method="post">
                <div class="container">
                    <h1 id="editProf">Edit Team</h2>
                    <!-- class="inputProfile" -->
                    <h3 class="updateProfile">
                        <label>Team Name:</label>
                        <input type="text" name="team_name" value="' . $team_name . '"></input>
                    </h3>
                <input type="hidden" name="id_team" value="' . $id_team . '"></input>
                <h3 class="updateProfile"> <label> Pendaftar : ' . $nama_pendaftar . '</label></h3>
        ';
        $players_query = "SELECT full_name, game_nickname FROM dt_player WHERE team_id = $id_team";
        $players = $con->query($players_query);
        $i = 1;
        while ($row = $players->fetch_assoc()) {    
            echo '
                <h3 class="updateProfile">
                    <label>Player '. $i .' Name:</label>
                    <input type="text" name="full_name'.$i.'" value="' . $row['full_name'] . '"></input>
                    <label>Game Nickname:</label>
                    <input type="text" name="game_nickname'.$i.'" value="' . $row['game_nickname'] . '"></input>
                </h3>
            ';
            $i++;
        }
        echo '<button class="btnUpdateProf" type="submit"> Update Team
        </button>  
    </div>
    </form>'
    ?>
</body>

</html>