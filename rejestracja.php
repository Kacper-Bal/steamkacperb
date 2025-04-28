<?php
require_once('conn.php');

$error = "";

if(isset($_POST) && isset($_POST["username"]) && isset($_POST["mail"]) && isset($_POST["password"])) {
    $username = $_POST["username"];
    $mail = $_POST["mail"];
    $password = hash('sha256', $_POST["password"]);
    
    if (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
        $error = "Podaj poprawny adres e-mail.";
    } else {
        $query="INSERT INTO `user`(`email`, `name`, `password`) VALUES ('$mail','$username','$password')";
        $conn->query($query);
        header('Location: logowanie.php');
        exit;
    }
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>steamkacperb</title>
</head>
<body>
    <h1>Rejestracja</h1>
	   <nav>
        <a href="games/index.php">Lista Gier</a>
        <a href="developers/index.php">Lista Producentów</a>
        <a href="publishers/index.php">Lista Wydawców</a>
        <a href="tags/index.php">Lista Tagów</a>
        <a href="platform/index.php">Lista Platform</a>
        <a href="search.php">Wyszukiwarka</a>
    </nav>
    
    <div class="logowanie">
    <form method="POST" action="rejestracja.php">
        <input class="logowanie_input" type="text" name="username" placeholder="Nazwa użytkownika" required>
        <input class="logowanie_input" type="mail" name="email" placeholder="E-mail" required>
        <input class="logowanie_input" type="password" name="password" placeholder="Hasło" required>
        <button class="logowanie_button" type="submit">Zarejestruj się</button>
    </form>
    <p style="text-align: center; color: #9aa8b8; margin-top: 15px;">
        Masz już konto? <a href="logowanie.php" style="color: #67c1f5;">Zaloguj się</a>
    </p>
</div>
</body>
</html>
