<?php
require_once '../conn.php';

echo '<title>Lista Producentów</title>';

$query = "SELECT `id`, `name` FROM developers";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo '<h1>PRODUCENCI</h1>';
    echo '<div class="glowny">';
    
    while ($row = $result->fetch_assoc()) {
        echo '<div class="element"><a style="font-size: 25px" href="show.php?id=' . $row['id'] . '">' . $row['name'] . '</a>' . '</div>';
    }

    echo '</div>';
} else {
    echo '<p>Brak producentów w bazie danych.</p>';
}
echo '<footer><a href="../index.php">Powrót do strony głównej</a></footer>';
?>
