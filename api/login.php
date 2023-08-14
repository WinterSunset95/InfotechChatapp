
<?php
include 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$postdata = file_get_contents("php://input");
	file_put_contents("login_logs.txt", $postdata);
	$name = json_decode($postdata)->name;
	$password = json_decode($postdata)->password;

	// Check if user exists with any of the above credentials
	$sql = "select name from users where (name='$name' or gmail='$name' or phone='$name') and password='$password'";
	$sql_result = $conn->query($sql);
    file_put_contents("login_logs.txt", $sql_result);
	// If true, return successful login
	if ($sql_result->num_rows > 0) {
		$result = array('status'=>'true', 'message'=>'Login successful', 'name'=>$sql_result->fetch_assoc()['name']);
		echo json_encode($result);
	} else {
        // return false
		$result = array('status'=>'false', 'message'=>'Login failed');
		echo json_encode($result);
	}


}
?>