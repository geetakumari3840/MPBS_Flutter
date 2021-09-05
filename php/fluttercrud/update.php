<?php
 require('config.php');

$name = $_POST['name'];
$email = $_POST['email'];
$id = $_POST['id'];
$insert = $conn->query("UPDATE user SET name = '$name', email = '$email' WHERE id = '$id'");
if ($insert){
    echo "Sucess";
};
$conn->close();
?>
