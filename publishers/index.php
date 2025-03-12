<?php
require_once '../conn.php';

echo '<title>Lista Wydawców</title>';

$query = "SELECT publishers.`id`, `name`, GROUP_CONCAT(game.`title` SEPARATOR ', ') AS `games` 
FROM publishers LEFT JOIN game ON game.publishers_id = publishers.id 
GROUP BY publishers.`id` ORDER BY publishers.`id`";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo '<h1>WYDAWCY</h1>';
    echo '<div class="glowny">';
    
    while ($row = $result->fetch_assoc()) {
        echo '<div class="element"><a style="font-size: 25px" href="show.php?id=' . $row['id'] . '">' . $row['name'] . '</a><p>' . $row['games'] . '</p></div>';
    }

    echo '</div>';
} else {
    echo '<p>Brak wydawców w bazie danych.</p>';
}
echo '<footer><a href="../index.php">Powrót do strony głównej</a></footer>';
?>
