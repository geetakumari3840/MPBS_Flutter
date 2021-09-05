<?php
 require('config.php');

$name = $_POST['name'];
$email = $_POST['email'];
$insert = $conn->query("INSERT INTO user(name,email)VALUES('$name','$email')");
if ($insert){
    echo "Sucess";
};
$conn->close();
?>
