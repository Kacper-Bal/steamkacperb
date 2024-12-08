<?php
$host = 'localhost';
$dbname = 'steamkacperb';
$username = 'root';
$password = '';

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Błąd połączenia z bazą danych: " . $conn->connect_error);
}

echo '<link rel="stylesheet" href="../style.css">';
echo '<link rel="stylesheet" href="style.css">';
?>