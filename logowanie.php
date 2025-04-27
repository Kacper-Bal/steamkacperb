<?php
require_once('conn.php');

	if (isset($_COOKIE['session_key'])) {
		$sessionKey = $_COOKIE['session_key'];
		$query_sesja = "SELECT * FROM sessions WHERE session_key = '$sessionKey'";
		$result = $conn->query($query_sesja);

		if ($result && $result->num_rows > 0) {
			header('Location: index.php');
			exit();
		}
	}

    if (isset($_POST) && isset($_POST['username']) &&  isset($_POST['password'])) {
        $username = $_POST['username'];
        $password = hash('sha256', $_POST['password']);

		$query="SELECT id, password FROM user WHERE name = '$username'";
        $result = $conn->query($query);

        if ($row = $result->fetch_assoc	()) {
            if ($row['password'] === $password) {
                $userId = $row['id'];

                $sessionKey = bin2hex(random_bytes(8));
				
				$query = "INSERT INTO sessions (user_id, session_key) VALUES ('$userId', '$sessionKey')";
				$conn->query($query);

                setcookie('session_key', $sessionKey, time() + (24 * 60 * 60), "/");

                header('Location: index.php');
                exit();
            } else {
                $error = "Błędne hasło.";
            }
        } else {
            $error = "Nie znaleziono użytkownika.";
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
    <h1>Logowanie</h1>
	<nav>
        <a href="games/index.php">Lista Gier</a>
        <a href="developers/index.php">Lista Producentów</a>
        <a href="publishers/index.php">Lista Wydawców</a>
        <a href="tags/index.php">Lista Tagów</a>
        <a href="platform/index.php">Lista Platform</a>
        <a href="search.php">Wyszukiwarka</a>
    </nav>
    
    <div class="logowanie">
    <form method="POST" action="logowanie.php">
        <input class="logowanie_input" type="text" name="username" placeholder="Nazwa użytkownika" required>
        <input class="logowanie_input" type="password" name="password" placeholder="Hasło" required>
        <button class="logowanie_button" type="submit">Zaloguj się</button>
    </form>
    <p style="text-align: center; color: #9aa8b8; margin-top: 15px;">
        Nie masz konta? <a href="rejestracja.php" style="color: #67c1f5;">Zarejestruj się</a>
    </p>
</div>
</body>
</html>
