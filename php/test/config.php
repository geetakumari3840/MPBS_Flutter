<?php
$host = "mysql:host=localhost;dbname=id17405903_mpbsgzb";
$user = "id17405903_indiampbs";
$pass = "M8734.8734ss";
$db = "id17405903_mpbsgzb";

try {
  $conn = new PDO($host, $user, $pass);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  //echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
?>