<?php
require_once '../conn.php';

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $record_id = $_GET['id'];

    $query = "SELECT game.id, game.title, game.desctription, developers.id AS id_d, publishers.id AS id_p, developers.name AS developer, publishers.name AS publisher FROM game 
        LEFT JOIN developers ON game.developers_id=developers.id
        LEFT JOIN publishers ON game.publishers_id=publishers.id
        WHERE game.id = $record_id
    ";

    $query_p = "SELECT game.id, platform.id AS id_pl, platform.version, platform.name FROM game 
        JOIN platforms_games ON game.id=platforms_games.game_id
        JOIN platform ON platforms_games.platform_id=platform.id
        WHERE game.id = $record_id";

    $query_t = "SELECT game.id, tag.id AS id_t, tag.tag_name FROM game 
        JOIN tags_games ON game.id=tags_games.game_id
        JOIN tag ON tags_games.tag_id=tag.id
        WHERE game.id = $record_id";

    $result = $conn->query($query);
    $result_p = $conn->query($query_p);
    $result_t = $conn->query($query_t);

    if ($result->num_rows > 0) {
        $record = $result->fetch_assoc();

        ?>

        <!DOCTYPE html>
        <html lang="pl">
        <head>
            <meta charset="UTF-8">
            <title><?php echo htmlspecialchars($record['title']); ?></title>
        </head>

        <body>
            <h1><?php echo htmlspecialchars($record['title']); ?></h1>
            <div class="container">
            <div class="left">
            </div>  

            <div class="right">
            <p><b>Description:</b> <?php echo htmlspecialchars($record['desctription']); ?></p>
            <p><b>Developer:</b> <?php echo ('<a href="../developers/show.php?id=' . $record['id_d'] . '">' . $record['developer'] . '</a>'); ?></p>
            <p><b>Publisher:</b> <?php echo ('<a href="../publishers/show.php?id=' . $record['id_p'] . '">' . $record['publisher'] . '</a>'); ?></p>
            <p><b>Platforms:</b>
                <?php
                while($row = $result_p->fetch_assoc()){
                    echo('<a href="../platform/show.php?id=' . $row['id_pl'] . '">' . $row['name'] . ' '. $row['version'] . '</a> ');
                }
            ?></p>
            <p><b>Tags:</b>
                <?php
                while($row = $result_t->fetch_assoc()){
                    echo('<a href="../tags/show.php?id=' . $row['id_t'] . '">' . $row['tag_name'] . '</a> ');
                }
            ?></p>
            </div>
        </div>
        
        <footer><a href="index.php">Wróć do listy gier</a></footer>
        </body>

        </html>
        <?php
    } else {
        echo "<p>Gra o podanym ID nie została znaleziona</p>";
    }
} else {
    echo "<p>Nieprawidłowe ID gry</p>";
}

$conn->close();
?>