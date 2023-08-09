<?php
include 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$postdata = file_get_contents("php://input");
	file_put_contents("logs.txt", $postdata);
	$message = json_decode($postdata)->message;
	if ($message != "") {
		$sql = "INSERT INTO messages (message_text) VALUES ('$message')";
		$result = $conn->query($sql);
		echo json_encode($result);
	}
}
?>
