
<?php
$MySQLi = new MySQLi( 'localhost', 'root', '', 'amd' );
$query = "SELECT * from modelo";
$result = $MySQLi->query($query);
while($fetch = $result->fetch_assoc()) {
    echo "<p>";
    foreach ($fetch as $field => $value) {
        echo $field . ' => ' . $value . ' | ';
    }
    echo "</p>";
}
?>