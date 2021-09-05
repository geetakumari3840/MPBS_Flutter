<?php 

require('config.php');
header('Content-type:application/json;charset=utf-8');
$sql = "SELECT * FROM user";
$result = $conn->query($sql);
$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}
echo json_encode($data);
$conn->close();
return

?>