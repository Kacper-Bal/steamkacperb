<?php
require_once '../conn.php';

echo '<title>Lista Tagów</title>';

$query = "SELECT `id`, `tag_name` FROM tag";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo '<h1>TAGI</h1>';
    echo '<ul>';
    
    while ($row = $result->fetch_assoc()) {
        echo '<li><a href="show.php?id=' . $row['id'] . '">' . $row['tag_name'] . '</a></li>';
    }

    echo '</ul>';
} else {
    echo '<p>Brak tagów w bazie danych.</p>';
}
echo '<footer><a href="../index.php">Powrót do strony głównej</a></footer>';
?>
