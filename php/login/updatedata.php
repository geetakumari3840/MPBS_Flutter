<?php
 require('dbconn.php');

$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];
$id = $_POST['id'];
$insert = $conn->query("UPDATE user_registration SET name = '$name', email = '$email', password = '$password' WHERE id = '$id'");
if ($insert){
    echo "Sucess";
};
$conn->close();
?>
