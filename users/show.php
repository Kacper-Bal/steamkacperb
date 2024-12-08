<?php
require_once '../conn.php';

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $record_id = $_GET['id'];

    $query = "SELECT user.id, game.id AS id_g , game.title, user.email FROM user 
        JOIN game_library ON user.id=game_library.user_id 
        JOIN game ON game.id=game_library.game_id
        WHERE user.id = $record_id 
    ";

    $result = $conn->query($query);
    $result2 = $conn->query($query);

    if ($result->num_rows > 0) {
        $record = $result->fetch_assoc();

        ?>

        <!DOCTYPE html>
        <html lang="pl">
        <head>
            <meta charset="UTF-8">
            <title><?php echo htmlspecialchars($record['name']); ?></title>
        </head>

        <body>
            <h1><?php echo htmlspecialchars($record['email']); ?></h1>
            <p><b>Gry: </b></p>
            <?php
                while($row = $result2->fetch_assoc()){
                    echo('<p><a href="../games/show.php?id=' . $row['id_g'] . '">' . $row['title'] . '</a></p>');
                }
            ?>

            <footer><a href="../index.php">Wróć do strony głównej</a></footer>
        </body>

        </html>
        <?php
    } else {
        echo "<p>Użytkownik o podanym ID nie został znaleziona</p>";
    }
} else {
    echo "<p>Nieprawidłowe ID Użytkownika</p>";
}

$conn->close();
?>