<?php
require_once '../conn.php';

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $record_id = $_GET['id'];

    $query = "SELECT publishers.id, publishers.name, publishers.logo_url, game.title, game.id AS id_g
        FROM publishers
        LEFT JOIN game on game.publishers_id = publishers.id
        WHERE publishers.id = $record_id
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
            <?php echo ('<link rel="icon" href="' . $record['logo_url'] . '"'); ?>
        </head>

        <body>
            <h1><?php echo htmlspecialchars($record['name']); ?></h1>
            <p><?php echo ('<img src="' . $record['logo_url'] . '">'); ?></p>
            <p><b>Gry: </b></p>
            <?php
                while($row = $result2->fetch_assoc()){
                    echo('<p><a href="../games/show.php?id=' . $row['id_g'] . '">' . $row['title'] . '</a></p>');
                }
            ?>  

            <footer><a href="index.php">Wróć do listy wydawców</a></footer>
        </body>

        </html>
        <?php
    } else {
        echo "<p>Wydawca o podanym ID nie został znaleziona</p>";
    }
} else {
    echo "<p>Nieprawidłowe ID wydawcy</p>";
}

$conn->close();
?>