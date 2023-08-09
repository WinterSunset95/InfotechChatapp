<?php
include 'database.php';

$sql = "SELECT * FROM messages";
$result = $conn->query($sql);
echo json_encode($result->fetch_all(MYSQLI_ASSOC));
?>
