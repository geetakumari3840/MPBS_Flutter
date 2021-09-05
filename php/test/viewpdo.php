<?php 

function fetchDataa(){
header("Content-type: application/json; charset=utf-8");
require_once('configpdo.php');
$query = 'SELECT * FROM user`';
$stm = $conn->prepare($query);
$stm->execute();
$rows = $stm->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rows);
}
print_r(fetchDataa());
?>