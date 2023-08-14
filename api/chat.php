<?php
include 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$postdata = file_get_contents("php://input");
	file_put_contents("logs.txt", $postdata);
	$user = json_decode($postdata)->user;
	$message = json_decode($postdata)->message;
	if ($message != "" && $user != "") {
		$sql = "INSERT INTO messages (message_sender, message_text) VALUES ('$user', '$message')";
		$result = $conn->query($sql);
		echo json_encode($result);
	}
}
?>
