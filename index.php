<?php
require_once('conn.php');

$loggedIn = false;

if (isset($_COOKIE['session_key'])) {
    $sessionKey = $_COOKIE['session_key'];
    $query_sesja = "SELECT * FROM sessions WHERE session_key = '$sessionKey'";
    $result = $conn->query($query_sesja);

    if ($result && $result->num_rows > 0) {
        $loggedIn = true;
    }
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>steamkacperb</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Strona Główna</h1>

    <div id="login">
        <?php if ($loggedIn): ?>
            <a href="mygames.php">My Games</a>
            <a href="logout.php">Logout</a>
        <?php else: ?>
            <a href="logowanie.php">Login</a>
            <a href="rejestracja.php">Register</a>
        <?php endif; ?>
    </div>

    <nav>
        <a href="games/index.php">Lista Gier</a>
        <a href="developers/index.php">Lista Producentów</a>
        <a href="publishers/index.php">Lista Wydawców</a>
        <a href="tags/index.php">Lista Tagów</a>
        <a href="platform/index.php">Lista Platform</a>
        <a href="search.php">Wyszukiwarka</a>
    </nav>
</body>
</html>
