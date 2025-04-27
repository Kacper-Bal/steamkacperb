<?php
require_once('conn.php');

if (isset($_COOKIE['session_key'])) {
    $sessionKey = $_COOKIE['session_key'];
    
    $query = "DELETE FROM sessions WHERE session_key = '$sessionKey'";
    $conn->query($query);

    setcookie('session_key', '', time() - 3600, '/');
}

$conn->close();

header('Location: logowanie.php');
exit();
?>
