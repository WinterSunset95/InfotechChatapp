<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
$php_inipath = php_ini_loaded_file();
  
if ($php_inipath) {
    echo 'Loaded php.ini is: ' . $php_inipath;
} else {
    echo 'A php.ini file is not loaded';
}

$dbhost = "localhost";
$dbname = "infotechchat";
$uname = "root";
$upass = "";

$conn = new mysqli($dbhost, $uname, $upass, $dbname);

if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}

?>
