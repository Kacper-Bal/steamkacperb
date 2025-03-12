<?php
require_once '../conn.php';

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $record_id = $_GET['id'];

    $query = "SELECT developers.id, developers.name, developers.logo_url, game.title, game.id AS id_g
        FROM developers
        LEFT JOIN game on game.developers_id = developers.id
        WHERE developers.id = $record_id
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
            <h1><?php echo ('<img src="' . $record['logo_url'] . '" style="width: 10vh;">'.$record['name'] ); ?></h1>
            <p><b>Gry: </b></p>
            <div id="lista">
            <?php
                while($row = $result2->fetch_assoc()){
                    echo('<p><a href="../games/show.php?id=' . $row['id_g'] . '">' . $row['title'] . '</a></p>');
                }
            ?>
            </div>
            <footer><a href="index.php">Wróć do listy producentów</a></footer>
        </body>

        </html>
        <?php
    } else {
        echo "<p>Producent o podanym ID nie został znaleziona</p>";
    }
} else {
    echo "<p>Nieprawidłowe ID producenta</p>";
}

$conn->close();
?>
