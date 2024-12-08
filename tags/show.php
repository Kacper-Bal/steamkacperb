<?php
require_once '../conn.php';

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $record_id = $_GET['id'];

    $query = "SELECT tag.id, tag.tag_name, game.title, game.id AS id_g
        FROM tag
        JOIN tags_games ON tag.id=tags_games.tag_id
        JOIN game ON tags_games.game_id=game.id
        WHERE tag.id = $record_id
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
            <title><?php echo htmlspecialchars($record['tag_name']); ?></title>
        </head>

        <body>
            <h1><?php echo htmlspecialchars($record['tag_name']); ?></h1>
            <p><b>Gry: </b></p>
            <?php
                while($row = $result2->fetch_assoc()){
                    echo('<p><a href="../games/show.php?id=' . $row['id_g'] . '">' . $row['title'] . '</a></p>');
                }
            ?>

            <footer><a href="index.php">Wróć do listy tagów</a></footer>
        </body>

        </html>
        <?php
    } else {
        echo "<p>Tag o podanym ID nie został znaleziona</p>";
    }
} else {
    echo "<p>Nieprawidłowe ID tagu</p>";
}

$conn->close();
?>