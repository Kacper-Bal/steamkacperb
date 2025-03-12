<?php
    require_once('conn.php');

    if (isset($_GET['name'])) {
        $name = $_GET['name'];
    } else{
        $name = "";
    }

    $query = "SELECT game.id, game.title, GROUP_CONCAT(DISTINCT CONCAT(platform.name, ' ', platform.version) SEPARATOR ', ') AS platform,  GROUP_CONCAT(DISTINCT tag.tag_name SEPARATOR ', ') AS tag FROM game
    LEFT JOIN developers ON game.developers_id = developers.id
    LEFT JOIN platforms_games ON game.id = platforms_games.game_id
    LEFT JOIN platform ON platform.id = platforms_games.platform_id
    LEFT JOIN tags_games ON game.id = tags_games.game_id
    LEFT JOIN tag ON tag.id = tags_games.tag_id
    WHERE game.title LIKE '%$name%' OR developers.name = '$name'
    GROUP BY game.id";

    $result = $conn->query($query);
?>
<nav style="height: 10vh; width: 100vw; border: 0;">
        <a href="games/index.php">Lista Gier</a>
        <a href="developers/index.php">Lista Producentów</a>
        <a href="publishers/index.php">Lista Wydawców</a>
        <a href="tags/index.php">Lista Tagów</a>
        <a href="platform/index.php">Lista Platform</a>
</nav>

<div id="search_bar" action="search.php">
            <form method="GET">
            <input type="text" placeholder="Tytuł gry" name="name" class="button">
            <button type="submit" class="button">Szukaj</button>
            </form>
</div>

<?php
        echo '<div class="glowny">';
        
        while ($row = $result->fetch_assoc()) {
            echo '<div class="element"><a style="font-size: 25px" href="show.php?id=' . $row['id'] . '">' . $row['title'] .'</a><p>' . $row['platform'] . '</p><p>' . $row['tag']. '</p></div>';
        }
        if ($result->num_rows == 1) {
            echo '<p id="tak">1 result matches your search.</p>';
        } else {
            echo '<p id="tak">' . $result->num_rows . ' results match your search.</p>';
        }
        
        echo '</div>';

    echo '<footer><a href="index.php">Powrót do strony głównej</a></footer>';
?>
