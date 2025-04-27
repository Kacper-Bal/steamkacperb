<?php
require_once('conn.php');

if (isset($_COOKIE['session_key'])) {
    $sessionKey = $_COOKIE['session_key'];
    $query_sesja = "SELECT * FROM sessions WHERE session_key = '$sessionKey'";
    $result = $conn->query($query_sesja);

    if ($result && $result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $userID = $row['user_id'];
    } else {
        header('Location: logowanie.php');
        exit();
    }
} else {
    header('Location: logowanie.php');
    exit();
}

$query_user = "SELECT name FROM user WHERE id='$userID'";
$result_user = $conn->query($query_user)->fetch_assoc();

$query_games = "SELECT game.id, game.title, publishers.name AS publisher, developers.name AS developer 
FROM user 
LEFT JOIN game_library ON user.id=game_library.user_id 
LEFT JOIN game ON game_library.game_id=game.id 
LEFT JOIN developers ON game.developers_id=developers.id 
LEFT JOIN publishers ON game.publishers_id=publishers.id 
WHERE user.id = '$userID'";
$result_games = $conn->query($query_games);

$conn->close();
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>steamkacperb</title>
</head>
<body>
    <?php
    echo '<h1>Gry Użytkownika: ' . $result_user['name'] . '</h1>';
    echo '<div class="glowny">';
    while ($row = $result_games->fetch_assoc()) {
        echo '<div class="element"><a style="font-size: 25px" href="show.php?id=' . $row['id'] . '">' . $row['title'] . '</a><p>' . $row['publisher'] . '</p><p>' . $row['developer'] . '</p></div>';
    }
    echo '</div>';
    ?>
    <footer><a href="index.php">Powrót do strony głównej</a></footer>
</body>
</html>
