<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Teams</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <style>
        body {
            background-color: #337;
            font-family: sans-serif;
        }

        #content {
            border: 1px;
            border-style: solid;
            padding-left: 10px;
            padding-right: 0px;
            width: 35%;
            padding-top: 20px;
            padding-bottom: 20px;
            background-color: rgb(30, 35, 60);
            margin-top: 5%;
            margin-left: 32%;
            color: white;
        }

        #button1 {
            background-color: #04AA6D;
            border: none;
            color: white;
            padding: 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-left: auto;
            margin-right: auto;
            cursor: pointer;
            border-radius: 12px;
            width: 96%;
        }

        #navbar {
            overflow: hidden;
            background-color: black;
        }

        #navbar a {
            float: right;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        #inpt1 {
            width: 95%;
        }

        #a1 {
            text-decoration: none;
            color: white;
        }

        .content {
            padding: 16px;
        }

        .sticky {
            position: fixed;
            top: 0;
            width: 100%;
        }

        .sticky+.content {
            padding-top: 60px;
        }
    </style>
    </style>
</head>

<body>
    <div id="navbar">
        <a href="Member.php">Member</a>
        <a href="team.php">Team</a>
        <a href="klasmen.php">Klasmen</a>
        <a href="match.php">Match</a>
        <a href="index.php">Home</a>
    </div>
    <div id="content">
        <h1 align="center">Register Team</h1>
        <form action="../scripts/registerturnamen.php" method="post">
            Team Name:
            <br>
            <input id="inpt1" type="text" name="team_name"></input>
            <br>
            <br>
            <div style="border-top: 1px;" align="center">Player 1</div>
            Full Name:
            <br>
            <input id="inpt1" type="text" name="full_name1"></input>
            <br>
            <br>
            Game Nickname:
            <br>
            <input id="inpt1" type="text" name="game_nickname1"></input>
            <br>
            <br>
            Email:
            <br>
            <input id="inpt1" type="email" name="email1"></input>
            <br>
            <br>
            Phone Number:
            <br>
            <input id="inpt1" type="number" name="tlp1"></input>
            <br>
            <br>
            <div style="border-top: 1px;" align="center">Player 2</div>
            Full Name:
            <br>
            <input id="inpt1" type="text" name="full_name2"></input>
            <br>
            <br>
            Game Nickname:
            <br>
            <input id="inpt1" type="text" name="game_nickname2"></input>
            <br>
            <br>
            Email:
            <br>
            <input id="inpt1" type="email" name="email2"></input>
            <br>
            <br>
            Phone Number:
            <br>
            <input id="inpt1" type="number" name="tlp2"></input>
            <br>
            <br>
            <div style="border-top: 1px;" align="center">Player 3</div>
            Full Name:
            <br>
            <input id="inpt1" type="text" name="full_name3"></input>
            <br>
            <br>
            Game Nickname:
            <br>
            <input id="inpt1" type="text" name="game_nickname3"></input>
            <br>
            <br>
            Email:
            <br>
            <input id="inpt1" type="email" name="email3"></input>
            <br>
            <br>
            Phone Number:
            <br>
            <input id="inpt1" type="number" name="tlp3"></input>
            <br>
            <br>
            <div style="border-top: 1px;" align="center">Player 4</div>
            Full Name:
            <br>
            <input id="inpt1" type="text" name="full_name4"></input>
            <br>
            <br>
            Game Nickname:
            <br>
            <input id="inpt1" type="text" name="game_nickname4"></input>
            <br>
            <br>
            Email:
            <br>
            <input id="inpt1" type="email" name="email4"></input>
            <br>
            <br>
            Phone Number:
            <br>
            <input id="inpt1" type="number" name="tlp4"></input>
            <br>
            <br>
            <div style="border-top: 1px;" align="center">Player 5</div>
            Full Name:
            <br>
            <input id="inpt1" type="text" name="full_name5"></input>
            <br>
            <br>
            Game Nickname:
            <br>
            <input id="inpt1" type="text" name="game_nickname5"></input>
            <br>
            <br>
            Email:
            <br>
            <input id="inpt1" type="email" name="email5"></input>
            <br>
            <br>
            Phone Number:
            <br>
            <input id="inpt1" type="number" name="tlp5"></input>
            <br>
            <br>
            <a href="index.php"><button id="button1" type="submit">Register</button></a>
        </form>

    </div>
    <script src="Navbar_S.js"></script>

</body>

</html>