<?php
require_once '../conn.php';

echo '<title>Lista Gier</title>';

$query = "SELECT id, title FROM game ";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo '<h1>GRY</h1>';
    echo '<ul>';
    
    while ($row = $result->fetch_assoc()) {
        echo '<li><a href="show.php?id=' . $row['id'] . '">' . $row['title'] .'</a></li>';
    }

    echo '</ul>';
} else {
    echo '<p>Brak gier w bazie danych.</p>';
}
echo '<footer><a href="../index.php">Powrót do strony głównej</a></footer>';
?>
