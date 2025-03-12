<?php
require_once '../conn.php';

echo '<title>Lista Producentów</title>';

$query = "SELECT developers.`id`, `name`, GROUP_CONCAT(game.`title` SEPARATOR ', ') AS `games` 
FROM developers LEFT JOIN game ON game.developers_id = developers.id 
GROUP BY developers.`id` ORDER BY developers.`id`";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo '<h1>PRODUCENCI</h1>';
    echo '<div class="glowny">';
    
    while ($row = $result->fetch_assoc()) {
        echo '<div class="element"><a style="font-size: 25px" href="show.php?id=' . $row['id'] . '">' . $row['name'] . '</a><p>' . $row['games'] . '</p></div>';
    }

    echo '</div>';
} else {
    echo '<p>Brak producentów w bazie danych.</p>';
}
echo '<footer><a href="../index.php">Powrót do strony głównej</a></footer>';
?>
