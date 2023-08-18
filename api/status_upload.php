<?php
include "database.php"

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$postdata = file_get_contents("php://input");
	file_put_contents("uploads.txt", $postdata);
    $data = json_decode($postdata, true);
    $username = $data["username"];
    $caption = $data["caption"];
    $image = $data["image"];
    $video = $data["video"];
	if ($username != "") {
		$sql = "INSERT INTO statuses (username, caption, image, video) VALUES ('$username', '$caption', '$image', '$video')";
		$result = $conn->query($sql);
		echo json_encode($result);
	}
}
?>