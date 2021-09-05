<?php
$servername = "localhost";
$username = "id17405903_indiampbs";
$password = "M8734.8734ss";
//Define your MySQL Database Name here.
$DatabaseName = "id17405903_mpbsgzb";

// Create connection
$conn = new mysqli($servername, $username, $password, $DatabaseName);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
  return;
} 
else {
//echo "Connected successfully"; 
}
?>