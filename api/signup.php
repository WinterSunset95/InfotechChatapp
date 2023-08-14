<?php
include 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$postdata = file_get_contents("php://input");
	file_put_contents("signup_logs.txt", $postdata);
	$name = json_decode($postdata)->name;
	$password = json_decode($postdata)->password;
	$gmail = json_decode($postdata)->gmail;
	$phone = json_decode($postdata)->phone;

	// Check if user exists with any of the above credentials
	$sql = "select * from users where name='$name' or gmail='$gmail' or phone='$phone'";
	$sql_result = $conn->query($sql);
	// If user exists, return error
	if ($sql_result->num_rows > 0) {
		$result = array('status'=>'false', 'message'=>'User already exists');
		echo json_encode($result);
		exit();
	} else {
		// else add user into the database and return true
		$sql = "insert into users (name, password, gmail, phone) values ('$name', '$password', '$gmail', '$phone')";
		$sql_result = $conn->query($sql);
		$result = array('status'=>'true');
		echo json_encode($result);
	}


}
?>