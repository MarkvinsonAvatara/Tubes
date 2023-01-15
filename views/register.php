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
    <title>Teams</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
    </style>
</head>

<body>
    <div id="navbar">
        <a href="profile.php">Edit My Profile</a> 
        <a href="team.php">Team</a>
        <a href="klasmen.php">Klasmen</a>
        <a href="match.php">Match</a>
        <a href="home.php">Home</a>
        <a href="logout.php">Logout</a>
    </div>
    <div class="wrapper">
        <div id="register-team-container">
            <h1>Register Your Team</h1>
            <form action="../scripts/registerturnamen.php" method="post" class="register-team-form">
                <div class="register-field">
                    <label for="team_name">Team Name:</label>
                    <input type="text" name="team_name"></input>
                </div>
                <div class="player-form">
                    <div style="border-top: 1px;">Player 1</div>
                    <div class="register-field">
                        <label for="full_name1">
                            Full Name:
                        </label>
                        <input type="text" name="full_name1"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name1">
                            Game Nickname:
                        </label>
                        <input type="text" name="game_nickname1"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name1">
                            Email:
                        </label>
                        <input type="email" name="email1"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name1">
                            Phone Number:
                        </label>
                        <input type="number" name="tlp1"></input>
                    </div>
                </div>
                <div class="player-form">
                    <div style="border-top: 1px;">Player 2</div>
                    <div class="register-field">
                        <label for="full_name2">
                            Full Name:
                        </label>
                        <input type="text" name="full_name2"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name2">
                            Game Nickname:
                        </label>
                        <input type="text" name="game_nickname2"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name2">
                            Email:
                        </label>
                        <input type="email" name="email2"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name2">
                            Phone Number:
                        </label>
                        <input type="number" name="tlp2"></input>
                    </div>
                </div>

                <div class="player-form">
                    <div style="border-top: 1px;">Player 3</div>
                    <div class="register-field">
                        <label for="full_name3">
                            Full Name:
                        </label>
                        <input type="text" name="full_name3"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name3">
                            Game Nickname:
                        </label>
                        <input type="text" name="game_nickname3"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name3">
                            Email:
                        </label>
                        <input type="email" name="email3"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name3">
                            Phone Number:
                        </label>
                        <input type="number" name="tlp3"></input>
                    </div>
                </div>

                <div class="player-form">
                    <div style="border-top: 1px;">Player 4</div>
                    <div class="register-field">
                        <label for="full_name4">
                            Full Name:
                        </label>
                        <input type="text" name="full_name4"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name4">
                            Game Nickname:
                        </label>
                        <input type="text" name="game_nickname4"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name4">
                            Email:
                        </label>
                        <input type="email" name="email4"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name4">
                            Phone Number:
                        </label>
                        <input type="number" name="tlp4"></input>
                    </div>
                </div>

                <div class="player-form">
                    <div style="border-top: 1px;">Player 5</div>
                    <div class="register-field">
                        <label for="full_name5">
                            Full Name:
                        </label>
                        <input type="text" name="full_name5"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name5">
                            Game Nickname:
                        </label>
                        <input type="text" name="game_nickname5"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name5">
                            Email:
                        </label>
                        <input type="email" name="email5"></input>
                    </div>
                    <div class="register-field">
                        <label for="full_name5">
                            Phone Number:
                        </label>
                        <input type="number" name="tlp5"></input>
                    </div>
                </div>
                <a href="index.php" class="login-link w-full"><button id="button1" type="submit"
                        class="w-full">Register</button></a>
            </form>
</body>

</html>