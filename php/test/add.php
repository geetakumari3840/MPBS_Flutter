<?php 

require('config.php');

$name = $_POST['name'];
$email = $_POST['email'];
try {
$sql = ("INSERT INTO user(name, email) VALUES ('$name','$email')");
  $conn->exec($sql);
   echo "New record created successfully";
} catch(PDOException $e) {
  echo $sql . "<br>" . $e->getMessage();
}
$conn->close();
?>