<?php
require_once('config.php');


$query = "SELECT * FROM `books`";
$stm= $conn->prepare($query);
$stm->execute();
$row = $stm->fetch(PDO::FETCH_ASSOC);
echo json_encode($row);
?>