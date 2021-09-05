<?php
 require('dbconn.php');

$id = $_POST['id'];
$delete = $conn->query("DELETE FROM user_registration WHERE id = '$id'");
if ($$delete){
    echo "Sucess";
};
$conn->close();
?>
