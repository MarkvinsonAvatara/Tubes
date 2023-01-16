<html>
<body>
<?php
session_start();
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'davay';
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
    exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}
if ($stmt = $con->prepare('SELECT id, password FROM dt_member WHERE username = ?')) {
    $stmt->bind_param('s', $_POST['username']);
    $stmt->execute();
    $stmt->store_result();
    if ($stmt->num_rows > 0) {
        $stmt->bind_result($id, $password);
        $stmt->fetch();
        if ($_POST['password'] === 'admin' && $password === 'admin' ){
                session_regenerate_id();
                $_SESSION['adminin'] = 13;
                $_SESSION['loggedin'] = TRUE;
                $_SESSION['name'] = $_POST['username'];
                $_SESSION['id'] = $id;
                echo "
                    <script type='text/javascript'>
                    alert('Welcome admin')
                    window.location = '../views/home.php'
                    </script>
                    ";
        } else if ($_POST['password'] === $password) {
            session_regenerate_id();
            $_SESSION['loggedin'] = TRUE;
            $_SESSION['adminin'] = 0;
            $_SESSION['name'] = $_POST['username'];
            $_SESSION['id'] = $id;
            echo "
            <script type='text/javascript'>
            alert('logged in')
            window.location = '../views/home.php'
            </script>
            ";
        } else {
            echo "
            <script type='text/javascript'>
            alert('Login gagal periksa username dan password anda kembali')
            window.location = '../views/index.php'
            </script>
            ";
        }
    } else {
        echo "
        <script type='text/javascript'>
        alert('Login gagal periksa username dan password anda kembali')
        window.location = '../views/index.php'
        </script>
        ";
    }
    $stmt->close();
}
?>
</body>
</html>