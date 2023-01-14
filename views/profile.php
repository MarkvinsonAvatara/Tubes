<?php
    if (!isset($_SESSION)) {
        session_start();
    }
    if(!isset($_SESSION['loggedin'])){
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
        <a href="profile.php">Profile</a>
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
        die ('Failed to connect to MySQL: ' . mysqli_connect_error());
    }

    if ($stmt = $con->prepare('SELECT id, first_name, last_name, email, birth_date, username FROM dt_member WHERE id = ?')) {
        $stmt->bind_param('s', $_SESSION['id']);
        $stmt->execute();
        $stmt->store_result();
        if ($stmt->num_rows > 0) {
            $stmt->bind_result($id, $firstname, $lastname, $email, $birth_date, $username);
            $stmt->fetch();
        } else {
            echo 'No account exists with that id.';
        }
        $stmt->close();
    } else {
        echo 'Could not prepare statement!';
    }
    
    echo '
        <form form action="../scripts/editProfile.php" method="post">
            <div class="container">
                <h1 id="editProf">Edit Profile</h2>
                <!-- class="inputProfile" -->
                <h3 class="updateProfile">
                    <label>First Name:</label>
                    <input type="text" name="firstname" value="'. $firstname .'"></input>
                </h3>
                <h3 class="updateProfile">
                    <label>Last Name:</label>
                    <input type="text" name="lastname"value="'. $lastname .'"></input>
                </h3>
                <h3 class="updateProfile">
                    <label>Email:</label>
                    <input type="email" name="email" value="'. $email .'"></input>
                </h3>
                <h3 class="updateProfile">
                    <label>Username:</label>
                    <input type="text" name="username" value="'. $username .'"></input>
                </h3>
                <h3 class="updateProfile">
                    <label>Password:</label>
                    <input type="password" name="password"></input>
                </h3>
                <h3 class="updateProfile">
                    <label>Birth Date:</label>
                    <input type="date" value="Birth Date" name="birth_date" value="'. $birth_date .'"></input>
                </h3>
                
                <button class="btnUpdateProf" type="submit">
                    <!-- <input type="submit" value="Update Profile"></input> -->
                    Update Profile
                </button>  
            </div>    
        </form>';
    ?>
</body>

</html>