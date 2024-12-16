<?php
require_once '../conn.php'; 

echo '<title>Lista Gier</title>';

$query = "SELECT game.id, game.title, GROUP_CONCAT(DISTINCT CONCAT(platform.name,' ',platform.version) SEPARATOR ', ') AS platform, GROUP_CONCAT(DISTINCT tag.tag_name SEPARATOR ', ') AS tag
FROM game
JOIN platforms_games ON game.id=platforms_games.game_id
JOIN platform ON platform.id=platforms_games.platform_id
JOIN tags_games ON game.id=tags_games.game_id
JOIN tag ON tag.id=tags_games.tag_id
GROUP BY game.id;";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo '<h1>GRY</h1>';
    echo '<div class="glowny">';
    
    while ($row = $result->fetch_assoc()) {
        echo '<div class="element"><a style="font-size: 25px" href="show.php?id=' . $row['id'] . '">' . $row['title'] .'</a><p>' . $row['platform'] . '</p><p>' . $row['tag']. '</p></div>';
    }

    echo '</div>';
} else {
    echo '<p>Brak gier w bazie danych.</p>';
}
echo '<footer><a href="../index.php">Powrót do strony głównej</a></footer>';
?>
