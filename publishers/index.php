<?php
require_once '../conn.php';

echo '<title>Lista Wydawców</title>';

$query = "SELECT `id`, `name` FROM publishers";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo '<h1>WYDAWCY</h1>';
    echo '<ul>';
    
    while ($row = $result->fetch_assoc()) {
        echo '<li><a href="show.php?id=' . $row['id'] . '">' . $row['name'] . '</a></li>';
    }

    echo '</ul>';
} else {
    echo '<p>Brak wydawców w bazie danych.</p>';
}
echo '<footer><a href="../index.php">Powrót do strony głównej</a></footer>';
?>
