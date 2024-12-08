<?php
require_once '../conn.php';

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $record_id = $_GET['id'];

    $query = "SELECT platform.id, platform.name, platform.version, platform.company_owner, game.id AS id_g, game.title
        FROM platform
        JOIN platforms_games ON platform.id = platforms_games.platform_id
        JOIN game ON platforms_games.game_id = game.id
        WHERE platform.id = $record_id
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
            <title><?php echo htmlspecialchars($record['name'] . " " . $record['version']); ?></title>
        </head>

        <body>
            <h1><?php echo htmlspecialchars($record['name'] . " " . $record['version']); ?></h1>
            <p><b>Owner: </b><?php echo htmlspecialchars($record['company_owner']); ?></p>
            <p><b>Games: </b></p>
            <?php
                while($row = $result2->fetch_assoc()){
                    echo('<p><a href="../games/show.php?id=' . $row['id_g'] . '">' . $row['title'] . '</a></p>');
                }
            ?>  

            <footer><a href="index.php">Wróć do listy platform</a></footer>
        </body>

        </html>
        <?php
    } else {
        echo "<p>Platforma o podanym ID nie została znaleziona</p>";
    }
} else {
    echo "<p>Nieprawidłowe ID platformy</p>";
}

$conn->close();
?>