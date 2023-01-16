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
    <title>Home</title>
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
            <a href="profile.php">Edit My Profile</a>
            <a href="team.php">Team</a>
            <a href="klasmen.php">Klasmen</a>
            <a href="match.php">Match</a>
            <a href="home.php">Home</a>
            <a href="logout.php">Logout</a>
        </div>
    </div>
    </div>
    <section id="bracket">
  <div class="container">
  <div class="split split-one">
    <div class="round round-one current">
      <div class="round-details">Quarter Final<br/><span class="date">March 8</span></div>
      <ul class="matchup">
        <li class="team team-top">Duke<span class="score">76</span></li>
        <li class="team team-bottom">Virginia<span class="score">82</span></li>
      </ul>
      <ul class="matchup">
        <li class="team team-top">Wake Forest<span class="score">64</span></li>
        <li class="team team-bottom">Clemson<span class="score">56</span></li>
      </ul>
      <ul class="matchup">
        <li class="team team-top">North Carolina<span class="score">68</span></li>
        <li class="team team-bottom">Florida State<span class="score">54</span></li>
      </ul>
      <ul class="matchup">
        <li class="team team-top">NC State<span class="score">74</span></li>
        <li class="team team-bottom">Maryland<span class="score">92</span></li>
      </ul>                     
    </div>  <!-- END ROUND ONE -->

    <div class="round round-two">
      <div class="round-details">Semi Final<br/><span class="date">March 10</span></div>     
      <ul class="matchup">
        <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
        <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
      </ul> 
      <ul class="matchup">
        <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
        <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
      </ul>                  
    </div>  <!-- END ROUND TWO -->
    
    <div class="round round-three">
      <div class="round-details">Final<br/><span class="date">March 16</span></div>     
      <ul class="matchup">
        <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
        <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
      </ul>                    
    </div>  <!-- END ROUND THREE -->    
  </div> 
</body>

</html>