<?php
require_once '../conn.php';

echo '<title>Lista Platform</title>';

$query = "SELECT `id`, `name`, `version` FROM platform";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo '<h1>PLATFORMY</h1>';
    echo '<div class="glowny">';
    
    while ($row = $result->fetch_assoc()) {
         echo '<div class="element"><a style="font-size: 25px" href="show.php?id=' . $row['id'] . '">' . $row['name'] .' ' . $row['version']. '</a>' . '</div>';
    }

    echo '</div>';
} else {
    echo '<p>Brak gier w bazie danych.</p>';
}
echo '<footer><a href="../index.php">Powrót do strony głównej</a></footer>';
?>
