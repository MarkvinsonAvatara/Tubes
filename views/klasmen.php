<?php
if (!isset($_SESSION)) {
  session_start();
}
if (!isset($_SESSION['loggedin'])) {
  header('Location:index.php');
}
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'davay';
$con = new mysqli($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ($con->connect_error) {
    exit('Failed to connect to MySQL: ' . $con->connect_error);
}
?>
<html>

<head>
    <meta charset='utf-8'>
    <title>Bracket</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Holtwood+One+SC' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script|Herr+Von+Muellerhoff' rel='stylesheet'
        type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Istok+Web|Roboto+Condensed:700' rel='stylesheet'
        type='text/css'>
</head>

<body>
    <div id="navbar">
        <div class="nav-links">
            <a href="team.php">Team</a>
            <a href="klasmen.php">Klasmen</a>
            <a href="match.php">Match</a>
            <a href="home.php">Home</a>
            <a href="logout.php">Logout</a>
        </div>
    </div>
    <section id="bracket">
    <div class="container">
        <div class="split split-one">
            <div class="round round-one current">
                <div class="round-details">Quarter Final<br/></div>
                <?php
                  $query = "SELECT (SELECT team_name FROM dt_team WHERE dt_team.id_team = dt_match.team1_id) AS team1_name, (SELECT team_name FROM dt_team WHERE dt_team.id_team = dt_match.team2_id) AS team2_name, `score1`, `score2` FROM `dt_match` WHERE tipe_match = 'Quarter Final'";
                  $teams = $con->query($query);
                  while($row = $teams -> fetch_assoc()) {
                    echo"
                    <ul class='matchup'>
                      <li class='team team-top'>" . $row['team1_name'] . "<span class='score'>" . $row['score1'] . "</span></li>
                      <li class='team team-bottom'>" . $row['team2_name'] . "<span class='score'>" . $row['score2'] . "</span></li>
                    </ul>
                    ";
                  }
                ?>              
            </div>  <!-- END ROUND ONE -->
            <div class="round round-two">
                <div class="round-details">Semi Final<br/></div>     
                <?php
                  $query = "SELECT (SELECT team_name FROM dt_team WHERE dt_team.id_team = dt_match.team1_id) AS team1_name, (SELECT team_name FROM dt_team WHERE dt_team.id_team = dt_match.team2_id) AS team2_name, `score1`, `score2` FROM `dt_match` WHERE tipe_match = 'Semi Final'";
                  $teams = $con->query($query);
                  while($row = $teams -> fetch_assoc()) {
                    echo"
                    <ul class='matchup'>
                      <li class='team team-top'>" . $row['team1_name'] . "<span class='score'>" . $row['score1'] . "</span></li>
                      <li class='team team-bottom'>" . $row['team2_name'] . "<span class='score'>" . $row['score2'] . "</span></li>
                    </ul>
                    ";
                  }
                ?>                  
            </div>  <!-- END ROUND TWO -->
            <div class="round round-three">
                <div class="round-details">Final<br/></div>     
                <?php
                  $query = "SELECT (SELECT team_name FROM dt_team WHERE dt_team.id_team = dt_match.team1_id) AS team1_name, (SELECT team_name FROM dt_team WHERE dt_team.id_team = dt_match.team2_id) AS team2_name, `score1`, `score2` FROM `dt_match` WHERE tipe_match = 'Final'";
                  $teams = $con->query($query);
                  while($row = $teams -> fetch_assoc()) {
                    echo"
                    <ul class='matchup'>
                      <li class='team team-top'>" . $row['team1_name'] . "<span class='score'>" . $row['score1'] . "</span></li>
                      <li class='team team-bottom'>" . $row['team2_name'] . "<span class='score'>" . $row['score2'] . "</span></li>
                    </ul>
                    ";
                  }
                ?>  <!-- END ROUND THREE -->    
            </div>
        </div> 
    </div> 
</body>

</html>