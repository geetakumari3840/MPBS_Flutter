<?php
$servername = "localhost";
$username = "id17405903_indiampbs";
$password = "M8734.8734ss";
//Define your MySQL Database Name here.
$DatabaseName = "id17405903_mpbsgzb";

// Create connection
$con = mysqli_connect($servername, $username, $password,$DatabaseName);

// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully";
?>